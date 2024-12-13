<Qucs Schematic 24.4.0>
<Properties>
  <View=103,43,927,548,1.40806,0,86>
  <Grid=10,10,1>
  <DataSet=simTTL 74LS04.dat>
  <DataDisplay=simTTL 74LS04.dpl>
  <OpenDisplay=0>
  <Script=simSN74.m>
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
  <GND * 1 160 270 0 0 0 0>
  <GND * 1 710 240 0 0 0 0>
  <GND * 1 480 270 0 0 0 0>
  <R R1 1 240 180 -26 15 0 0 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R2 1 480 240 15 -26 0 1 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 290 280 0 0 0 0>
  <SPICEINIT SPICEINIT1 1 200 60 -32 18 0 0 "set ngbehavior=ltpsa" 1>
  <.TR TR1 1 790 60 0 70 0 0 "lin" 1 "0" 1 "10 ms" 1 "1001" 1 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <SpLib X1 1 350 210 -26 51 1 2 "/home/vaulent-ach/QucsWorkspace/SN74LS04.lib" 0 "SN74LS04" 0 "auto" 0 "" 0 "" 0>
  <Vdc V1 1 710 210 18 -26 0 1 "5 V" 1>
  <Vrect V3 1 160 240 18 -26 0 1 "5 V" 1 "1 ms" 1 "1 ms" 1 "1 ns" 0 "1 ns" 0 "0 ns" 0 "0 V" 1>
</Components>
<Wires>
  <160 180 160 210 "" 0 0 0 "">
  <160 180 210 180 "" 0 0 0 "">
  <270 180 320 180 "In" 310 140 31 "">
  <380 180 480 180 "" 0 0 0 "">
  <480 180 480 210 "" 0 0 0 "">
  <380 240 400 240 "" 0 0 0 "">
  <290 240 320 240 "" 0 0 0 "">
  <290 240 290 280 "" 0 0 0 "">
  <710 180 710 180 "VCC" 740 150 0 "">
  <480 180 480 180 "Out" 510 150 0 "">
  <400 240 400 240 "VCC" 430 210 0 "">
</Wires>
<Diagrams>
  <Rect 200 480 720 169 3 #c0c0c0 1 00 1 0 0.001 0.01 1 -0.492836 2 6 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.v(in)" #0000ff 0 3 0 0 0>
	<"ngspice/tran.v(out)" #ff0000 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
