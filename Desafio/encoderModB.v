`include "./encoderB.v"

module encoderModB #(
    parameter integer N = 7,              // Tamaño del contador (5 bits para soportar hasta 31)
    parameter integer MAX_COUNT = 31      // Valor máximo del contador para 5 bits
)(
    input wire clk,               // Reloj de 50 MHz
    input wire canalA_B,          // Señal del encoder (canal A)
    input wire canalB_B,          // Señal del encoder (canal B)
    input wire sw_B,              // Pulsador para resetear el contador
    output wire [N-1:0] contador_out_B  // Salida del contador (5 bits)
);

    // Señales internas del encoder
    wire giroPositivo_B;
    wire giroNegativo_B;

    // Señales para detectar flancos de subida
    reg giroPositivo_d_B = 0;
    reg giroNegativo_d_B = 0;

    // Contador de pasos de 5 bits
    reg [N-1:0] contador_B = 0;    // Contador de 5 bits (0 a 31)

    // Instancia del módulo encoderB
    encoderB encoderB_inst (
        .clk(clk),
        .canalA(canalA_B),
        .canalB(canalB_B),
        .giroPositivo(giroPositivo_B),
        .giroNegativo(giroNegativo_B)
    );

    // Detección de flancos de subida sincronizados con el reloj principal
    wire pos_edge_giroPositivo_B = giroPositivo_B & ~giroPositivo_d_B;
    wire pos_edge_giroNegativo_B = giroNegativo_B & ~giroNegativo_d_B;

    always @(posedge clk) begin
        // Registrar el estado anterior para detectar flancos
        giroPositivo_d_B <= giroPositivo_B;
        giroNegativo_d_B <= giroNegativo_B;

        // Lógica para actualizar el contador de pasos
        if (sw_B) begin
            contador_B <= 0;                 // Resetear el contador si el pulsador está presionado
        end 
        else begin
            if (pos_edge_giroPositivo_B && contador_B < MAX_COUNT)
                contador_B <= contador_B + 1;  // Incrementar el contador hasta 31
            else if (pos_edge_giroNegativo_B && contador_B > 0)
                contador_B <= contador_B - 1;  // Decrementar si el contador es mayor que 0
        end
    end

    // Salida del contador
    assign contador_out_B = contador_B;

endmodule

