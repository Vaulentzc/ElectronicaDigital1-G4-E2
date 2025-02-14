`include "./frecDiv.v"

module pulsadorNote #(
    parameter integer FrecIn = 25000,    // Frecuencia de entrada fija (25 kHz)
    parameter integer FrecOut = 440      // Frecuencia de salida fija (por nota)
)(
    input wire clockIn,        // Reloj base de la FPGA (25 kHz)
    input wire pulsador,       // Entrada del pulsador (con pull-up, activa en 0)
    input wire [6:0] modulador, // Entrada de modulación (5 bits)
    output wire ondaOut        // Onda cuadrada generada cuando se presiona el pulsador
);

    wire clockDiv;       // Salida del divisor de frecuencia
    wire pulso_activo;   // Pulsador negado para lógica positiva

    assign pulso_activo = ~pulsador; // Negar la señal porque tiene pull-up

    // Instancia del divisor de frecuencia con modulación
    frecDiv #(
        .FrecIn(FrecIn), 
        .FrecOut(FrecOut)
    ) divisor (
        .clockIn(clockIn),
        .clockOut(clockDiv),
        .modulador(modulador)  // Entrada del modulador
    );

    // Solo deja pasar la señal cuando se presiona el pulsador
    assign ondaOut = pulso_activo ? clockDiv : 1'b0;

endmodule

