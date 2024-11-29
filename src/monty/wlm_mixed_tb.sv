`timescale 1ns / 1ps

`include "wlm_mixed.svh"


module wlm_mixed_tb
   #(
        parameter           LOGQ    = 60      ,
        parameter           LOGQH   = 17      ,
        parameter           CORRECT = 1       ,
        parameter           FF_IN   = 1       ,
        parameter           FF_SUB  = 1       ,
        parameter           FF_MUL  = 1       ,
        parameter           FF_SUM  = 1       ,
        parameter           FF_OUT  = 1       ,
        parameter           HP      = 5       ,
        parameter string    FN_C    = "C.txt" ,
        parameter string    FN_qH   = "qH.txt",
        parameter string    FN_T    = "T.txt"
    );

localparam K = LOGQ*2;


reg clk;
reg rst;

localparam FP = (2*HP);


always #HP clk = ~clk;


integer file_C, file_qH, file_T, n_C, n_qH, n_T, st_C, st_qH, st_T;
integer i;
integer fail = 0;


reg  [LOGQH-1:0] qH;
wire [LOGQ -1:0] T ;
reg  [LOGQ -1:0] T_;
reg  [K    -1:0] C ;

wlm_mixed
    #(
        .LOGQ   (LOGQ   ),
        .LOGQH  (LOGQH  ),
        .CORRECT(CORRECT),
        .FF_IN  (FF_IN  ),
        .FF_SUM (FF_SUM ),
        .FF_SUB (FF_SUB ),
        .FF_MUL (FF_MUL ),
        .FF_OUT (FF_OUT )
    ) 
wlm_mixed_inst 
    (
        .clk(clk),
        .rst(rst),
        .qH (qH ),
        .C  (C  ),
        .T  (T  )
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
    $fclose(file_qH);
    $fclose(file_T);
    $finish;
endfunction


initial begin


    file_C  = $fopen(FN_C,  "r");
    file_qH = $fopen(FN_qH, "r");
    file_T  = $fopen(FN_T,  "r");

    if (file_C == 0) begin
        $display("Could not open file %s", FN_C);
        $finish;
    end

    if (file_qH == 0) begin
        $display("Could not open file %s", FN_qH);
        $fclose(file_C);
        $finish;
    end

    if (file_T == 0) begin
        $display("Could not open file %s", FN_T);
        $fclose(file_C);
        $fclose(file_qH);
        $finish;
    end

    n_C  = count_lines(file_C);
    n_qH = count_lines(file_qH);
    n_T  = count_lines(file_T);

    if ((n_C != n_qH) || (n_C != n_T)) begin
        $display("Files %s, %s and %s have different number of lines", FN_C, FN_qH, FN_T);
        close_files_finish();
    end
    else if (n_C == 0) begin
        $display("Files %s, %s and %s are empty", FN_C, FN_qH, FN_T);
        close_files_finish();
    end


    $display("Simulation started.");

    clk = 1'b0;
    rst = 1'b0;
    #FP;
    rst = 1'b1;
    #FP;
    rst = 1'b0;
    #(HP);
    #(1);
    // Initialize inputs


    i = 0;

    $display("TOTAL TESTS: %d", n_C);

    for (i = 0; i < n_C + wlm_mixed_inst.LAT; i = i + 1) begin
        
        if (i < n_C) begin
            st_C  = $fscanf(file_C , "%h\n", C );
            st_qH = $fscanf(file_qH, "%h\n", qH);

            $display("Test [%d] in pipeline -> C = 0x%x, qH = 0x%x", i, C, qH);

            if (st_C != 1 || st_qH != 1) begin
                $display("Error while reading inputs %s and %s for test %d", FN_C, FN_qH, i);
                close_files_finish();
            end
        end
        
        if (i >= wlm_mixed_inst.LAT) begin
            st_T = $fscanf(file_T, "%h\n", T_);
            if (st_T != 1) begin
                $display("Error while reading input %s for test %d", FN_T, i);
                close_files_finish();
            end
            
            if (T_ == T) begin
                $display("Test [%d] Passed -> T = %x. Failing: %d", i - wlm_mixed_inst.LAT, T, fail);
            end else begin
                fail = fail + 1;
                $display("Test [%d] Failed -> T = 0x%x, Expected T = 0x%x. Failing: %d", 
                          i - wlm_mixed_inst.LAT, T, T_, fail);
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