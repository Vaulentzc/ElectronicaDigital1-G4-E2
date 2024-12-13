<Qucs Schematic 24.4.0>
<Properties>
  <View=0,-59,953,748,1,0,0>
  <Grid=10,10,1>
  <DataSet=SimFanOutCMOS-CD4069-SI.dat>
  <DataDisplay=SimFanOutCMOS-CD4069-SI.dpl>
  <OpenDisplay=0>
  <Script=SimFanOutCMOS-CD4069-SI.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Título>
  <FrameText1=Dibujado por:>
  <FrameText2=Fecha:>
  <FrameText3=Revisión:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Vdc V1 1 650 280 18 -26 0 1 "5 V" 1>
  <GND * 1 650 310 0 0 0 0>
  <GND * 1 90 320 0 0 0 0>
  <SpLib X1 1 260 250 -26 51 1 2 "/home/vaulent-ach/QucsWorkspace/CD4069UB.lib" 0 "CD4069UB" 0 "auto" 0 "" 0 "" 0>
  <GND * 1 220 310 0 0 0 0>
  <SPICEINIT SPICEINIT1 1 120 90 -32 18 0 0 "set ngbehavior=ltpsa" 1>
  <Vrect V2 1 90 290 18 -26 0 1 "5 V" 1 "1 ms" 1 "1 ms" 1 "1 ns" 0 "1 ns" 0 "0 ns" 0 "0 V" 1>
  <.TR TR1 1 710 50 0 70 0 0 "lin" 1 "0" 1 "10 ms" 1 "2000" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <SpLib X3 1 530 370 -26 51 1 2 "/home/vaulent-ach/QucsWorkspace/CD4069UB.lib" 0 "CD4069UB" 0 "auto" 0 "" 0 "" 0>
  <GND * 1 490 240 0 0 0 0>
  <GND * 1 490 420 0 0 0 0>
  <R R1 1 120 220 -26 15 0 0 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <IProbe Pr1 1 180 220 -26 16 0 0>
  <IProbe Pr2 1 380 150 16 -26 0 1>
  <SpLib X2 1 520 120 -26 51 1 2 "/home/vaulent-ach/QucsWorkspace/CD4069UB.lib" 0 "CD4069UB" 0 "auto" 0 "" 0 "" 0>
  <R R3 1 450 90 -26 15 0 0 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R4 1 440 340 -26 15 0 0 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
</Components>
<Wires>
  <290 220 380 220 "" 0 0 0 "">
  <220 280 220 310 "" 0 0 0 "">
  <220 280 230 280 "" 0 0 0 "">
  <490 400 490 420 "" 0 0 0 "">
  <490 400 500 400 "" 0 0 0 "">
  <380 220 380 340 "" 0 0 0 "">
  <380 340 410 340 "" 0 0 0 "">
  <470 340 500 340 "" 0 0 0 "">
  <90 220 90 260 "" 0 0 0 "">
  <210 220 230 220 "" 0 0 0 "">
  <490 150 490 240 "" 0 0 0 "">
  <480 90 490 90 "" 0 0 0 "">
  <380 180 380 220 "" 0 0 0 "">
  <380 90 380 120 "" 0 0 0 "">
  <380 90 420 90 "" 0 0 0 "">
  <650 250 650 250 "VCC" 680 220 0 "">
  <290 280 290 280 "VCC" 320 250 0 "">
  <560 400 560 400 "VCC" 590 370 0 "">
  <380 220 380 220 "out" 340 190 0 "">
  <550 150 550 150 "VCC" 580 120 0 "">
</Wires>
<Diagrams>
  <Rect 66 680 709 172 3 #c0c0c0 1 00 1 0 0.001 0.01 1 -0.499999 2 6 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.i(pr1)" #ff0000 0 3 0 0 0>
	<"ngspice/tran.i(pr2)" #00ff00 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
