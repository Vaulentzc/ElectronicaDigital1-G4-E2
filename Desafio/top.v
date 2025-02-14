`include "./sintetizador.v"
`include "./reproductorPista.v"

module top (
    input wire clk,               // Reloj de 25 MHz de la FPGA

    // Entradas del sintetizador (notas y encoder para modificar sonido en vivo)
    input wire Do, DoS, Re, ReS, Mi, Fa, FaS, Sol, SolS, La, LaS, Si,  // Pulsadores de notas
    input wire canalA, canalB,    // Encoder del sintetizador
    input wire sw,                // Reset del encoder del sintetizador

    // Entradas del reproductor de pistas (encoder B y botón de inicio/parada)
    input wire PcanalA, PcanalB,  // Encoder del reproductor de pistas
    input wire Psw,               // Pulsador para resetear el encoder B
    input wire boton,             // Botón de activación/desactivación de la pista

    // Salidas de onda del sintetizador
    output wire ondaDo, ondaDoS, ondaRe, ondaReS, ondaMi,
    output wire ondaFa, ondaFaS, ondaSol, ondaSolS, ondaLa, ondaLaS, ondaSi,

    // Salida de la pista generada por el reproductor
    output wire pista
);

    // Instancia del sintetizador, controlado por su propio encoder
    sintetizador mi_sintetizador (
        .clockIn(clk),
        .Do(Do), .DoS(DoS), .Re(Re), .ReS(ReS), .Mi(Mi),
        .Fa(Fa), .FaS(FaS), .Sol(Sol), .SolS(SolS), .La(La), .LaS(LaS), .Si(Si),
        .canalA(canalA), 
        .canalB(canalB), 
        .sw(sw),
        .ondaDo(ondaDo), .ondaDoS(ondaDoS), .ondaRe(ondaRe), .ondaReS(ondaReS), .ondaMi(ondaMi),
        .ondaFa(ondaFa), .ondaFaS(ondaFaS), .ondaSol(ondaSol), .ondaSolS(ondaSolS),
        .ondaLa(ondaLa), .ondaLaS(ondaLaS), .ondaSi(ondaSi)
    );

    // Instancia del reproductor de pistas, con su propio encoder
    reproductorPista reproductorPista_inst (
        .clk(clk),               // Reloj de 25 MHz de la FPGA
        .boton(boton),           // Control de activación
        .canalA_B(PcanalA),      // Se actualiza el nombre de la señal para evitar conflictos
        .canalB_B(PcanalB),
        .sw_B(Psw),
        .pista(pista)
    );

endmodule

