<Qucs Schematic 24.4.0>
<Properties>
  <View=-19,-23,947,551,0.986063,0,0>
  <Grid=10,10,1>
  <DataSet=simCMOS CD4069.dat>
  <DataDisplay=simCMOS CD4069.dpl>
  <OpenDisplay=0>
  <Script=simCD4069.m>
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
  <Vdc V1 1 660 250 18 -26 0 1 "5 V" 1>
  <GND * 1 660 280 0 0 0 0>
  <GND * 1 100 290 0 0 0 0>
  <GND * 1 390 270 0 0 0 0>
  <SpLib X1 1 270 220 -26 51 1 2 "/home/vaulent-ach/QucsWorkspace/CD4069UB.lib" 0 "CD4069UB" 0 "auto" 0 "" 0 "" 0>
  <GND * 1 230 280 0 0 0 0>
  <SPICEINIT SPICEINIT1 1 130 60 -32 18 0 0 "set ngbehavior=ltpsa" 1>
  <Vrect V2 1 100 260 18 -26 0 1 "5 V" 1 "1 ms" 1 "1 ms" 1 "1 ns" 0 "1 ns" 0 "0 ns" 0 "0 V" 1>
  <R R1 1 160 190 -26 15 0 0 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R2 1 390 240 15 -26 0 1 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <.TR TR1 1 720 20 0 70 0 0 "lin" 1 "0" 1 "10 ms" 1 "2000" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
</Components>
<Wires>
  <100 190 100 230 "" 0 0 0 "">
  <100 190 130 190 "" 0 0 0 "">
  <190 190 240 190 "in" 250 160 27 "">
  <300 190 390 190 "" 0 0 0 "">
  <390 190 390 210 "" 0 0 0 "">
  <230 250 230 280 "" 0 0 0 "">
  <230 250 240 250 "" 0 0 0 "">
  <660 220 660 220 "VCC" 690 190 0 "">
  <300 250 300 250 "VCC" 330 220 0 "">
  <390 190 390 190 "out" 420 160 0 "">
</Wires>
<Diagrams>
  <Rect 106 510 709 172 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.v(in)" #0000ff 0 3 0 0 0>
	<"ngspice/tran.v(out)" #ff0000 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
