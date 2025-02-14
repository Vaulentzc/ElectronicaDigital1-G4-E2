`timescale 1ns / 1ps
`include "top.v"

module top_tb;

    // Señal de reloj
    reg clk = 0;

    // Simular los pulsadores como registros
    reg Do = 0, DoS = 0, Re = 0, ReS = 0, Mi = 0;
    reg Fa = 0, FaS = 0, Sol = 0, SolS = 0, La = 0, LaS = 0, Si = 0;

    // Salidas del sintetizador
    wire ondaDo, ondaDoS, ondaRe, ondaReS, ondaMi;
    wire ondaFa, ondaFaS, ondaSol, ondaSolS, ondaLa, ondaLaS, ondaSi;

    // Instancia del módulo top
    top uut (
        .clk(clk),
        .Do(Do), .DoS(DoS), .Re(Re), .ReS(ReS), .Mi(Mi),
        .Fa(Fa), .FaS(FaS), .Sol(Sol), .SolS(SolS), .La(La), .LaS(LaS), .Si(Si),
        .ondaDo(ondaDo), .ondaDoS(ondaDoS), .ondaRe(ondaRe), .ondaReS(ondaReS), .ondaMi(ondaMi),
        .ondaFa(ondaFa), .ondaFaS(ondaFaS), .ondaSol(ondaSol), .ondaSolS(ondaSolS),
        .ondaLa(ondaLa), .ondaLaS(ondaLaS), .ondaSi(ondaSi)
    );

    // Generador de reloj (50% duty cycle)
    always #20 clk = ~clk;  // Periodo de 40 ns (25 MHz)

    // Proceso de prueba
    initial begin
        $dumpfile("sim/top_tb.vcd");
        $dumpvars(0, top_tb);

        // Esperar un poco antes de iniciar la prueba
        #100;

        // Simular la pulsación de cada botón
        Do = 1; #100000; Do = 0;  // Nota Do4
        DoS = 1; #100000; DoS = 0; // Nota Do#4
        Re = 1; #100000; Re = 0;  // Nota Re4
        ReS = 1; #100000; ReS = 0; // Nota Re#4
        Mi = 1; #100000; Mi = 0;  // Nota Mi4
        Fa = 1; #100000; Fa = 0;  // Nota Fa4
        FaS = 1; #100000; FaS = 0; // Nota Fa#4
        Sol = 1; #100000; Sol = 0;  // Nota Sol4
        SolS = 1; #100000; SolS = 0; // Nota Sol#4
        La = 1; #100000; La = 0;  // Nota La4
        LaS = 1; #100000; LaS = 0; // Nota La#4
        Si = 1; #100000; Si = 0;  // Nota Si4

        // Esperar un poco antes de finalizar
        #100000;
        $finish;
    end

endmodule

