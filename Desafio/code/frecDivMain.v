module frecDivMain #(
    parameter integer FrecIn = 25000000, // Frecuencia de entrada en Hz
    parameter integer FrecOut = 1500      // Frecuencia de salida en Hz
)(
    input wire clockIn,   // Señal de entrada (reloj de la FPGA)
    output reg clockOut   // Señal de salida con la frecuencia deseada
);

    // Calcular automáticamente el divisor N
    localparam integer N = FrecIn / FrecOut;
    localparam integer NHalf = N / 2; // Para generar una onda cuadrada

    integer count = 0;

    always @(posedge clockIn) begin
        if (count >= (NHalf - 1)) begin
            count <= 0;
            clockOut <= ~clockOut; // Invertir la salida cada N/2 ciclos
        end else begin
            count <= count + 1;
        end
    end

endmodule

