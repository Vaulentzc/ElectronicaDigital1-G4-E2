// Divisor de Frecuencia (renombrado a B_divFrec)
module B_divFrec #(
    parameter integer FrecIn = 50000000, // Frecuencia de entrada en Hz (50 MHz)
    parameter integer FrecOut = 500      // Frecuencia de salida en Hz
)(
    input wire clockIn,          // Señal de entrada (reloj de la FPGA)
    output reg clockOut = 0      // Señal de salida con la frecuencia deseada
);

    // Calcular automáticamente el divisor N
    localparam integer N = FrecIn / FrecOut;
    localparam integer NHalf = N / 2;    // Para generar una onda cuadrada

    integer count = 0;

    always @(posedge clockIn) begin
        if (count >= (NHalf - 1)) begin
            count <= 0;
            clockOut <= ~clockOut;       // Invertir la salida cada N/2 ciclos
        end else begin
            count <= count + 1;
        end
    end
endmodule

// Flip-Flop tipo D de 1 bit (renombrado a B_D_FF_1bit)
module B_D_FF_1bit
#(
    parameter Default = 0
)
(
    input D,
    input C,
    output Q,
    output Qn
);
    reg state;

    assign Q = state;
    assign Qn = ~state;

    always @ (posedge C) begin
        state <= D;
    end

    initial begin
        state = Default;
    end
endmodule

// Flip-Flop tipo JK (renombrado a B_JK_FF)
module B_JK_FF
#(
    parameter Default = 1'b0
)
(
    input J,
    input C,
    input K,
    output Q,
    output Qn
);
    reg state;

    assign Q = state;
    assign Qn = ~state;

    always @ (posedge C) begin
        if (~J & K)
            state <= 1'b0;
        else if (J & ~K)
            state <= 1'b1;
        else if (J & K)
            state <= ~state;
    end

    initial begin
        state = Default;
    end
endmodule

// Demultiplexor 1 a 2 (renombrado a B_Demux1)
module B_Demux1
#(
    parameter Default = 0 
)
(
    output out_0,
    output out_1,
    input [0:0] sel,
    input in
);
    assign out_0 = (sel == 1'h0) ? in : Default;
    assign out_1 = (sel == 1'h1) ? in : Default;
endmodule

// Módulo principal: Encoder (renombrado a encoderB)
module encoderB (
    input clk,              // Reloj de la FPGA (50 MHz)
    input canalA,
    input canalB,
    output giroPositivo,
    output giroNegativo
);
    wire clk_div;           // Nuevo reloj dividido a 500 Hz

    // Instancia del divisor de frecuencia renombrado
    B_divFrec #(
        .FrecIn(50000000),  // Frecuencia de entrada: 50 MHz
        .FrecOut(500)       // Frecuencia de salida: 500 Hz
    ) B_divFrec_inst (
        .clockIn(clk),
        .clockOut(clk_div)
    );

    // Señales internas
    wire s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14;

    // Flip-Flops tipo D
    B_D_FF_1bit #(.Default(0)) B_D_FF_1bit_i0 (.D(canalA), .C(clk_div), .Q(s0));
    B_D_FF_1bit #(.Default(0)) B_D_FF_1bit_i1 (.D(canalB), .C(clk_div), .Q(s1));

    assign s4 = (canalA ^ canalB);
    assign s2 = (canalA ^ s0);
    assign s3 = (canalB ^ s1);
    assign s5 = (s2 & s4);
    assign s6 = (s4 & s3);
    assign s7 = (s2 | s3);

    // Flip-Flop tipo JK
    B_JK_FF #(.Default(0)) B_JK_FF_i2 (.J(s5), .C(clk_div), .K(s6), .Q(s8));

    // Más Flip-Flops tipo D
    B_D_FF_1bit #(.Default(0)) B_D_FF_1bit_i3 (.D(s2),  .C(s7), .Q(s9));
    B_D_FF_1bit #(.Default(0)) B_D_FF_1bit_i4 (.D(s3),  .C(s7), .Q(s10));
    B_D_FF_1bit #(.Default(0)) B_D_FF_1bit_i5 (.D(s9),  .C(s7), .Q(s11));
    B_D_FF_1bit #(.Default(0)) B_D_FF_1bit_i6 (.D(s10), .C(s7), .Q(s12));

    assign s13 = ((s9 & s11) | (s10 & s12));

    // Flip-Flop D con la corrección del nombre de la señal de salida negada
    B_D_FF_1bit #(.Default(0)) B_D_FF_1bit_i7 (
        .D(s8),
        .C(s13),
        .Qn(s14)
    );

    // Demultiplexor para determinar la dirección del giro
    B_Demux1 #(.Default(0)) B_Demux1_i8 (
        .sel(s14),
        .in(s7),
        .out_0(giroNegativo),
        .out_1(giroPositivo)
    );

endmodule

