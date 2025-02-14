module frecDiv #(
    parameter integer FrecIn = 25000, // Frecuencia de entrada fija en Hz
    parameter integer FrecOut = 440   // Frecuencia de salida base en Hz
)(
    input wire clockIn,               // Señal de entrada (reloj de la FPGA)
    input wire [6:0] modulador,       // Modulación para ajustar la frecuencia
    output reg clockOut = 0           // Señal de salida con la frecuencia deseada
);

    // Divisor dinámico N y su mitad
    localparam integer N = FrecIn / (2 * FrecOut);   // Divisor base calculado en tiempo de compilación
    integer count = 0;

    // Generación de la onda cuadrada con modulación
    always @(posedge clockIn) begin
        if (count >= ((N - 1) + (modulador / 10))) begin
            count <= 0;               // Reiniciar el contador
            clockOut <= ~clockOut;    // Invertir la salida cada N/2 ciclos modulado
        end else begin
            count <= count + 1;       // Incrementar el contador
        end
    end

endmodule

