`include "./encoder.v"

module encoderMod #(
    parameter integer N = 7,              // Tamaño del contador (5 bits para soportar hasta 31)
    parameter integer MAX_COUNT = 31      // Valor máximo del contador para 5 bits
)(
    input wire clk,               // Reloj de 50 MHz
    input wire canalA,            // Señal del encoder (canal A)
    input wire canalB,            // Señal del encoder (canal B)
    input wire sw,                // Pulsador para resetear el contador
    output wire [N-1:0] contador_out  // Salida del contador (5 bits)
);

    // Señales internas del encoder
    wire giroPositivo;
    wire giroNegativo;

    // Señales para detectar flancos de subida
    reg giroPositivo_d = 0;
    reg giroNegativo_d = 0;

    // Contador de pasos de 5 bits
    reg [N-1:0] contador = 0;    // Contador de 5 bits (0 a 31)

    // Instancia del módulo encoder
    encoder encoder_inst (
        .clk(clk),
        .canalA(canalA),
        .canalB(canalB),
        .giroPositivo(giroPositivo),
        .giroNegativo(giroNegativo)
    );

    // Detección de flancos de subida sincronizados con el reloj principal
    wire pos_edge_giroPositivo = giroPositivo & ~giroPositivo_d;
    wire pos_edge_giroNegativo = giroNegativo & ~giroNegativo_d;

    always @(posedge clk) begin
        // Registrar el estado anterior para detectar flancos
        giroPositivo_d <= giroPositivo;
        giroNegativo_d <= giroNegativo;

        // Lógica para actualizar el contador de pasos
        if (sw) begin
            contador <= 0;                 // Resetear el contador si el pulsador está presionado
        end 
        else begin
            if (pos_edge_giroPositivo && contador < MAX_COUNT)
                contador <= contador + 1;  // Incrementar el contador hasta 31
            else if (pos_edge_giroNegativo && contador > 0)
                contador <= contador - 1;  // Decrementar si el contador es mayor que 0
        end
    end

    // Salida del contador
    assign contador_out = contador;

endmodule

