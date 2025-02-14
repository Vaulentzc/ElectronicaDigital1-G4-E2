`include "romContador.v"
`include "encoderModB.v"

module reproductorPista (
    input wire clk,        // Reloj de la FPGA (25 MHz)
    input wire boton,      // Control de activación
    input wire canalA_B,   // Señal del encoder B (canal A)
    input wire canalB_B,   // Señal del encoder B (canal B)
    input wire sw_B,       // Pulsador de reset del encoder B
    output wire pista      // Salida de la señal musical
);

    wire clk_2Hz;          
    wire clk_25kHz; 
    wire clk_500Hz;       
    wire [15:0] frecPista; 
    wire [6:0] contador_B; // Salida del encoderModB usada para la modulación

    // Instancia del módulo encoderModB (contador de 7 bits para la modulación)
    encoderModB #(.N(7)) encoderB_inst (
        .clk(clk), 
        .canalA_B(canalA_B), 
        .canalB_B(canalB_B), 
        .sw_B(sw_B), 
        .contador_out_B(contador_B) // Salida del contador (modulación)
    );

        // Divisor de frecuencia para generar 25 kHz a partir de 25 MHz
    divFrecMain #(
        .FrecIn(25000000)
    ) div25kHz (
        .clockIn(clk),
        .FrecOut(16'd25000),
        .modulador(7'd0),  // Sin modulación en este divisor
        .clockOut(clk_25kHz)
    );

    divFrecMain #(
        .FrecIn(25000)
    ) div500Hz (
        .clockIn(clk_25kHz),
        .FrecOut(16'd500),
        .modulador(7'd0),  // Sin modulación en este divisor
        .clockOut(clk_500Hz)
    );

    // Divisor de frecuencia para generar 2 Hz a partir de 500 Hz
    divFrecMain #(
        .FrecIn(500)
    ) div2Hz (
        .clockIn(clk_500Hz),
        .FrecOut(16'd16),
        .modulador(contador_B),  // Sin modulación en este divisor
        .clockOut(clk_2Hz)
    );

    // Instancia de romContador
    romContador rom_inst (
        .clk(clk_2Hz),
        .boton(boton),
        .data(frecPista)
    );

    // Divisor de frecuencia para generar la onda cuadrada según frecPista con modulación
    divFrecMain #(
        .FrecIn(25000)  // Reloj de entrada de 25 kHz
    ) divPista (
        .clockIn(clk_25kHz),
        .FrecOut(frecPista),  // Usa la frecuencia obtenida desde ROM
        .modulador(16'd0), // Usa el contador del encoder B como modulación
        .clockOut(pista)
    );

endmodule

// Módulo de División de Frecuencia (Sin cambios)
module divFrecMain #(
    parameter integer FrecIn = 25000000 // Frecuencia de entrada en Hz
)(
    input wire clockIn,         // Señal de entrada (reloj)
    input wire [15:0] FrecOut,  // Frecuencia de salida variable
    input wire [6:0] modulador, // Modulación para ajustar la frecuencia
    output reg clockOut         // Señal de salida generada
);

    reg [31:0] count = 0;
    reg [31:0] N;
    reg [31:0] NHalf;

    always @(posedge clockIn) begin
        if (FrecOut == 16'h1) begin
            clockOut <= 1'b0;  // Si FrecOut es 1, la salida es 0
        end else if (FrecOut > 1) begin
            N = FrecIn / FrecOut;  // Calcula el divisor dinámicamente
            if (N < 1) N = 1;      // Evita valores menores a 1
            NHalf = N >> 1;        // División por 2 más eficiente

            if (count >= ((NHalf - 1) + modulador)) begin
                count <= 0;
                clockOut <= ~clockOut; // Invierte la señal para generar la onda cuadrada
            end else begin
                count <= count + 1;
            end
        end else begin
            clockOut <= 0; // Si FrecOut es 0, salida en bajo
        end
    end

endmodule

