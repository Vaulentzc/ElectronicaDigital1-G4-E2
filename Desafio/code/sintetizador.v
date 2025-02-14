`include "./frecDivMain.v"
`include "./pulsadorNote.v"
`include "./encoderMod.v"

module sintetizador (
    input wire clockIn,    // Reloj de 25 MHz de la FPGA
    input wire Do, DoS, Re, ReS, Mi, Fa, FaS, Sol, SolS, La, LaS, Si,  // Pulsadores para las notas
    input wire canalA, canalB, sw,  // Entradas del encoder y pulsador de reset
    output wire ondaDo, ondaDoS, ondaRe, ondaReS, ondaMi,
    output wire ondaFa, ondaFaS, ondaSol, ondaSolS, ondaLa, ondaLaS, ondaSi  // Salidas de onda
);

    wire clock25kHz;  // Señal de 25 kHz generada por frecDivMain
    wire [6:0] contador;  // Contador de 5 bits del encoder

    // Divisor de frecuencia de 25 MHz a 25 kHz
    frecDivMain #(
        .FrecIn(25000000),
        .FrecOut(25000)
    ) divisorBase (
        .clockIn(clockIn),
        .clockOut(clock25kHz)
    );

    // Instancia del módulo encoderMod (contador de 7 bits)
    encoderMod #(.N(7)) encoder_inst (
        .clk(clockIn), 
        .canalA(canalA), 
        .canalB(canalB), 
        .sw(sw), 
        .contador_out(contador)
    );

    // Instancia de cada nota con modulación del contador
    pulsadorNote #(.FrecIn(25000), .FrecOut(262)) Do_inst (
        .clockIn(clock25kHz), .pulsador(Do), .ondaOut(ondaDo), .modulador(contador)
    );
    pulsadorNote #(.FrecIn(25000), .FrecOut(277)) DoS_inst (
        .clockIn(clock25kHz), .pulsador(DoS), .ondaOut(ondaDoS), .modulador(contador)
    );
    pulsadorNote #(.FrecIn(25000), .FrecOut(294)) Re_inst (
        .clockIn(clock25kHz), .pulsador(Re), .ondaOut(ondaRe), .modulador(contador)
    );
    pulsadorNote #(.FrecIn(25000), .FrecOut(311)) ReS_inst (
        .clockIn(clock25kHz), .pulsador(ReS), .ondaOut(ondaReS), .modulador(contador)
    );
    pulsadorNote #(.FrecIn(25000), .FrecOut(330)) Mi_inst (
        .clockIn(clock25kHz), .pulsador(Mi), .ondaOut(ondaMi), .modulador(contador)
    );
    pulsadorNote #(.FrecIn(25000), .FrecOut(349)) Fa_inst (
        .clockIn(clock25kHz), .pulsador(Fa), .ondaOut(ondaFa), .modulador(contador)
    );
    pulsadorNote #(.FrecIn(25000), .FrecOut(370)) FaS_inst (
        .clockIn(clock25kHz), .pulsador(FaS), .ondaOut(ondaFaS), .modulador(contador)
    );
    pulsadorNote #(.FrecIn(25000), .FrecOut(392)) Sol_inst (
        .clockIn(clock25kHz), .pulsador(Sol), .ondaOut(ondaSol), .modulador(contador)
    );
    pulsadorNote #(.FrecIn(25000), .FrecOut(415)) SolS_inst (
        .clockIn(clock25kHz), .pulsador(SolS), .ondaOut(ondaSolS), .modulador(contador)
    );
    pulsadorNote #(.FrecIn(25000), .FrecOut(440)) La_inst (
        .clockIn(clock25kHz), .pulsador(La), .ondaOut(ondaLa), .modulador(contador)
    );
    pulsadorNote #(.FrecIn(25000), .FrecOut(466)) LaS_inst (
        .clockIn(clock25kHz), .pulsador(LaS), .ondaOut(ondaLaS), .modulador(contador)
    );
    pulsadorNote #(.FrecIn(25000), .FrecOut(494)) Si_inst (
        .clockIn(clock25kHz), .pulsador(Si), .ondaOut(ondaSi), .modulador(contador)
    );

endmodule

