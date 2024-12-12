`timescale 1ns / 1ps

`include "barrett.svh"

module barrett_tb
    #(
        parameter           LOGQ    = 64      ,
        parameter           LOGQH   = 64      ,
        parameter           PIPE_Q  = 1       ,
        parameter           CORRECT = 1       ,
        parameter           FF_IN   = 1       ,
        parameter           FF_SHF  = 1       ,
        parameter           FF_MUL  = 1       ,
        parameter           USE_CSA = 1       ,
        parameter           FF_CSA  = 1       ,
        parameter           FF_NEG  = 0       ,
        parameter           FF_CORR = 0       ,
        parameter           FF_OUT  = 1       ,
        parameter           HP      = 5       ,
        parameter string    FN_C    = "C.txt" ,
        parameter string    FN_qH   = "qH.txt",
        parameter string    FN_T    = "T.txt" ,
        parameter string    FN_MU   = "MU.txt",
        parameter string    FN_B    = "B.txt"
    );


localparam K = LOGQ*2;
localparam LOGLOGQ = $rtoi($ceil($clog2(LOGQ + 1)));


reg clk;

parameter FP = (2*HP);


always #HP clk = ~clk;

integer file_C, file_qH, file_T, n_C, n_qH, n_T, st_C, st_qH, st_T;
integer file_MU, n_MU, st_MU;
integer file_B, n_B, st_B;
integer i;
integer fail = 0;


reg  [LOGQH-1:0] qH;
wire [LOGQ -1:0] T ;
reg  [LOGQ -1:0] T_;
reg  [K    -1:0] C ;
reg  [LOGLOGQ-1:0] B;
reg  [   LOGQ  :0] MU;

barrett 
    #(
        .LOGQ(LOGQ),
        .LOGQH(LOGQH),
        .PIPE_Q(PIPE_Q),
        .CORRECT(CORRECT),
        .FF_IN(FF_IN),
        .FF_SHF(FF_SHF),
        .FF_MUL(FF_MUL),
        .USE_CSA(USE_CSA),
        .FF_CSA(FF_CSA),
        .FF_NEG(FF_NEG),
        .FF_CORR(FF_CORR),
        .FF_OUT(FF_OUT)
    ) 
barrett_inst
    (
        .clk(clk),
        .qH (qH ),
        .C  (C  ),
        .T  (T  ),
        .B  (B  ),
        .MU (MU )
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
    $fclose(file_MU);
    $fclose(file_B);
    $finish;
endfunction


initial begin


    file_C  = $fopen(FN_C,  "r");
    file_qH = $fopen(FN_qH, "r");
    file_T  = $fopen(FN_T,  "r");
    file_MU = $fopen(FN_MU, "r");
    file_B = $fopen(FN_B, "r");

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

    if (file_MU == 0) begin
        $display("Could not open file %s", FN_MU);
        $fclose(file_C);
        $fclose(file_qH);
        $fclose(file_T);
        $finish;
    end

    if (file_B == 0) begin
        $display("Could not open file %s", FN_B);
        $fclose(file_C);
        $fclose(file_qH);
        $fclose(file_T);
        $fclose(file_MU);
        $finish;
    end

    n_C  = count_lines(file_C);
    n_qH = count_lines(file_qH);
    n_T  = count_lines(file_T);
    n_MU = count_lines(file_MU);
    n_B = count_lines(file_B);

    if ((n_C != n_qH) || (n_C != n_T) || (n_C != n_MU) || (n_C != n_B)) begin
        $display("Files have different number of lines");
        close_files_finish();
    end
    else if (n_C == 0) begin
        $display("Files are empty");
        close_files_finish();
    end


    $display("Simulation started.");

    clk = 1'b0;
    #FP;
    #FP;
    #(HP);
    #(1);


    i = 0;

    $display("TOTAL TESTS: %d", n_C);

    
    for (i = 0; i < n_C + barrett_inst.LAT; i = i + 1) begin
        
        if (i < n_C) begin
            st_C  = $fscanf(file_C , "%h\n", C );
            st_qH = $fscanf(file_qH, "%h\n", qH);
            st_MU = $fscanf(file_MU, "%h\n", MU);
            st_B = $fscanf(file_B, "%h\n", B);

            $display("Test [%d] in pipeline -> C = 0x%x, qH = 0x%x, MU = 0x%x, B = 0x%x", i, C, qH, MU, B);

            if (st_C != 1 || st_qH != 1 || st_MU != 1 || st_B != 1) begin
                $display("Error while reading inputs for test %d",i);
                close_files_finish();
            end
        end
        
        if (i >= barrett_inst.LAT) begin
            st_T = $fscanf(file_T, "%h\n", T_);
            if (st_T != 1) begin
                $display("Error while reading input %s for test %d", FN_T, i);
                close_files_finish();
            end
            
            if (T_ == T) begin
                $display("Test [%d] Passed -> T = %x. Failing: %d", i - barrett_inst.LAT, T, fail);
            end else begin
                fail = fail + 1;
                $display("Test [%d] Failed -> T = 0x%x, Expected T = 0x%x. Failing: %d", 
                          i - barrett_inst.LAT, T, T_, fail);
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

