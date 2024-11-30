`timescale 1ns / 1ps

`include "montgomery_shift.svh"

module montgomery_shift_tb
   #(
        parameter           LOGQ    = 32      ,
        parameter           LOGQH   = 15      ,
        parameter           CORRECT = 1       ,
        parameter           LOGL1   = 5       ,
        parameter           LOGL2   = 5       ,
        parameter           USE_L3  = 1       ,
        parameter           LOGL3   = 5       ,
        parameter           FF_IN   = 1       ,
        parameter           FF_SHF  = 1       ,
        parameter           FF_SUB  = 1       ,
        parameter           FF_SUM  = 1       ,
        parameter           FF_OUT  = 1       ,
        parameter           HP      = 5       ,
        parameter string    FN_C    = "C.txt" ,
        parameter string    FN_qL   = "qL.txt",
        parameter string    FN_T    = "T.txt"
    );

localparam LOGC = LOGQ*2;
localparam LOGT = montgomery_shift_inst.LOGT;

reg clk;

localparam FP = (2*HP);

always #HP clk = ~clk;



integer file_C, file_qL, file_T, n_C, n_qL, n_T, st_C, st_qL, st_T;
integer i;
integer fail = 0;



reg  [LOGQH-1:0] qH;
reg  [LOGQH-1:0] Q;
wire [LOGT -1:0] T;
reg  [LOGT -1:0] T_;
reg  [LOGC -1:0] C;
reg  [LOGL1-1:0] L1;
reg  [LOGL2-1:0] L2;
reg  [LOGL3-1:0] L3;


montgomery_shift
    #(
        .LOGQ   (LOGQ   ),
        .LOGQH  (LOGQH  ),
        .CORRECT(CORRECT),
        .FF_IN  (FF_IN  ),
        .FF_SUB (FF_SUB ),
        .FF_SHF (FF_SHF ),
        .FF_SUM (FF_SUM ),
        .FF_OUT (FF_OUT ),
        .USE_L3 (USE_L3 ),
        .LOGL1  (LOGL1  ),
        .LOGL2  (LOGL2  ),
        .LOGL3  (LOGL3  )
    ) 
montgomery_shift_inst 
    (
        .clk(clk),
        .qH (qH),
        .C  (C ),
        .L1 (L1),
        .L2 (L2),
        .L3 (L3),
        .T  (T )
    );


function integer count_lines;
    input integer file;
    integer char;
    integer lines;
    integer r;
    begin
        lines = 0;
        while (!$feof(file)) begin
            char = $fgetc(file);
            if (char == "\n") begin
                lines = lines + 1;
            end
        end
        count_lines = lines;
    end
    r = $fseek(file, 0, 0);
    if (r != 0) begin
        $display("Could not rewind file %d.", file);
        close_files_finish();
    end
endfunction


function void close_files_finish();
    $fclose(file_C);
    $fclose(file_qL);
    $fclose(file_T);
    $finish;
endfunction


initial begin


    file_C  = $fopen(FN_C,  "r");
    file_qL = $fopen(FN_qL, "r");
    file_T  = $fopen(FN_T,  "r");

    if (file_C == 0) begin
        $display("Could not open file %s", FN_C);
        $finish;
    end

    if (file_qL == 0) begin
        $display("Could not open file %s", FN_qL);
        $fclose(file_C);
        $finish;
    end

    if (file_T == 0) begin
        $display("Could not open file %s", FN_T);
        $fclose(file_C);
        $fclose(file_qL);
        $finish;
    end

    n_C  = count_lines(file_C);
    n_qL = count_lines(file_qL);
    n_T  = count_lines(file_T);

    if ((USE_L3 == 0 && (n_C*2) != n_qL)
        || (USE_L3 == 1 && (n_C*3) != n_qL)
        || (n_C != n_T)) begin
        $display("Files %s, %s and %s have different number of lines", FN_C, FN_qL, FN_T);
        close_files_finish();
    end
    else if (n_C == 0) begin
        $display("Files %s, %s and %s are empty", FN_C, FN_qL, FN_T);
        close_files_finish();
    end


    $display("Simulation started.");

    clk = 1'b0;
    #FP;
    #FP;
    #(HP);
    #(1);
    // Initialize inputs


    i = 0;

    $display("TOTAL TESTS: %d", n_C);

    for (i = 0; i < n_C + montgomery_shift_inst.LAT; i = i + 1) begin
        
        if (i < n_C) begin
            st_C  = $fscanf(file_C , "%h\n", C );
            st_qL = $fscanf(file_qL, "%h\n", L1);
            st_qL = st_qL && $fscanf(file_qL, "%h\n", L2);
            if (USE_L3) begin
                st_qL = st_qL && $fscanf(file_qL, "%h\n", L3);
                qH = ((1 << (LOGQH - 1)) + (1 << L1) - (1 << L2) + (1 << L3));
            end
            else begin
                qH = ((1 << (LOGQH - 1)) + (1 << L1) - (1 << L2));
            end

            $display("Test [%d] in pipeline -> C = 0x%x, qH = 0x%x", i, C, qH);

            if (st_C != 1 || st_qL != 1) begin
                $display("Error while reading inputs %s and %s for test %d", FN_C, FN_qL, i);
                close_files_finish();
            end
        end
        
        if (i >= montgomery_shift_inst.LAT) begin
            st_T = $fscanf(file_T, "%h\n", T_);
            if (st_T != 1) begin
                $display("Error while reading input %s for test %d", FN_T, i);
                close_files_finish();
            end
            
            if (T_ == T) begin
                $display("Test [%d] Passed -> T = %x. Failing: %d", i - montgomery_shift_inst.LAT, T, fail);
            end else begin
                fail = fail + 1;
                $display("Test [%d] Failed -> T = 0x%x, Expected T = 0x%x. Failing: %d", 
                          i - montgomery_shift_inst.LAT, T, T_, fail);
            end
        end

        ///////////////////////////////////////////////////////////
        #FP; //////////////// NEXT CYCLE //////////////////////////
        ///////////////////////////////////////////////////////////
    end


    #FP;
    #FP;
    #FP;
    #FP;
    #FP;

    if (fail == 0) begin
        $display("All tests passed.");
    end else begin
        $display("%d tests failed.", fail);
    end

    close_files_finish();
end

endmodule