<Qucs Schematic 24.4.0>
<Properties>
  <View=0,75,953,689,1,0,0>
  <Grid=10,10,1>
  <DataSet=SimFanOutTTL 74LS04-SI.dat>
  <DataDisplay=SimFanOutTTL 74LS04-SI.dpl>
  <OpenDisplay=0>
  <Script=SimFanOutTTL 74LS04-SI.m>
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
  <GND * 1 40 360 0 0 0 0>
  <GND * 1 170 370 0 0 0 0>
  <SPICEINIT SPICEINIT1 1 80 150 -32 18 0 0 "set ngbehavior=ltpsa" 1>
  <SpLib X1 1 230 300 -26 51 1 2 "/home/vaulent-ach/QucsWorkspace/SN74LS04.lib" 0 "SN74LS04" 0 "auto" 0 "" 0 "" 0>
  <Vrect V2 1 40 330 18 -26 0 1 "5 V" 1 "1 ms" 1 "1 ms" 1 "1 ns" 0 "1 ns" 0 "0 ns" 0 "0 V" 1>
  <GND * 1 430 200 0 0 0 0>
  <GND * 1 740 330 0 0 0 0>
  <.TR TR1 1 820 150 0 70 0 0 "lin" 1 "0" 1 "10 ms" 1 "1001" 1 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Vdc V1 1 740 300 18 -26 0 1 "5 V" 1>
  <SpLib X3 1 510 320 -26 51 1 2 "/home/vaulent-ach/QucsWorkspace/SN74LS04.lib" 0 "SN74LS04" 0 "auto" 0 "" 0 "" 0>
  <SpLib X2 1 500 150 -26 51 1 2 "/home/vaulent-ach/QucsWorkspace/SN74LS04.lib" 0 "SN74LS04" 0 "auto" 0 "" 0 "" 0>
  <R R2 1 420 120 -26 15 0 0 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 450 360 0 0 0 0>
  <R R3 1 430 290 -26 15 0 0 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R1 1 80 270 -26 15 0 0 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <IProbe Pr1 1 160 270 -26 16 0 0>
  <IProbe Pr2 1 370 190 16 -26 0 1>
</Components>
<Wires>
  <260 270 360 270 "" 0 0 0 "">
  <260 330 280 330 "" 0 0 0 "">
  <170 330 200 330 "" 0 0 0 "">
  <170 330 170 370 "" 0 0 0 "">
  <360 270 360 310 "" 0 0 0 "">
  <360 310 390 310 "" 0 0 0 "">
  <390 290 390 310 "" 0 0 0 "">
  <390 290 400 290 "" 0 0 0 "">
  <450 120 470 120 "" 0 0 0 "">
  <460 290 480 290 "" 0 0 0 "">
  <430 180 430 200 "" 0 0 0 "">
  <430 180 470 180 "" 0 0 0 "">
  <450 350 450 360 "" 0 0 0 "">
  <450 350 480 350 "" 0 0 0 "">
  <40 270 40 300 "" 0 0 0 "">
  <40 270 50 270 "" 0 0 0 "">
  <110 270 130 270 "" 0 0 0 "">
  <190 270 200 270 "" 0 0 0 "">
  <360 260 360 270 "" 0 0 0 "">
  <360 260 370 260 "" 0 0 0 "">
  <370 220 370 260 "" 0 0 0 "">
  <370 120 370 160 "" 0 0 0 "">
  <370 120 390 120 "" 0 0 0 "">
  <740 270 740 270 "VCC" 770 240 0 "">
  <540 350 540 350 "VCC" 570 320 0 "">
  <530 180 530 180 "VCC" 560 150 0 "">
  <360 270 360 270 "Out" 300 220 0 "">
  <280 330 280 330 "VCC" 310 300 0 "">
</Wires>
<Diagrams>
  <Rect 80 600 720 169 3 #c0c0c0 1 00 1 0 0.001 0.01 1 -0.490631 2 5.39694 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.i(pr1)" #ff00ff 0 3 0 0 0>
	<"ngspice/tran.i(pr2)" #00ff00 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
