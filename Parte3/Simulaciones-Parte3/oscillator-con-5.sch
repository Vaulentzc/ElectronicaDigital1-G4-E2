<Qucs Schematic 24.4.0>
<Properties>
  <View=-219,274,1157,1077,1.33168,157,222>
  <Grid=10,10,1>
  <DataSet=oscillator-con-5.dat>
  <DataDisplay=oscillator-con-5.dpl>
  <OpenDisplay=0>
  <Script=oscillator-con-5.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <SpLib X1 1 400 410 -53 -100 1 2 "/home/johnny/projects/qucs-tutorial-examples/analog-examples/oscillator/CD4069UB.lib" 0 "CD4069UB" 1 "auto" 0 "" 0 "" 0>
  <GND * 1 350 490 0 0 0 0>
  <GND * 1 630 510 0 0 0 0>
  <GND * 1 770 440 0 0 0 0>
  <Vdc V1 1 770 390 18 -26 0 1 "5 V" 1>
  <SpLib X2 1 240 410 -50 -106 1 2 "/home/johnny/projects/qucs-tutorial-examples/analog-examples/oscillator/CD4069UB.lib" 0 "CD4069UB" 1 "auto" 0 "" 0 "" 0>
  <GND * 1 190 490 0 0 0 0>
  <R R1 1 550 380 -26 15 0 0 "100 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <SpLib X3 1 -100 410 -50 -106 1 2 "/home/johnny/projects/qucs-tutorial-examples/analog-examples/oscillator/CD4069UB.lib" 0 "CD4069UB" 1 "auto" 0 "" 0 "" 0>
  <GND * 1 -150 490 0 0 0 0>
  <SpLib X4 1 150 410 -53 -100 1 2 "/home/johnny/projects/qucs-tutorial-examples/analog-examples/oscillator/CD4069UB.lib" 0 "CD4069UB" 1 "auto" 0 "" 0 "" 0>
  <GND * 1 100 490 0 0 0 0>
  <SpLib X5 1 -10 410 -50 -106 1 2 "/home/johnny/projects/qucs-tutorial-examples/analog-examples/oscillator/CD4069UB.lib" 0 "CD4069UB" 1 "auto" 0 "" 0 "" 0>
  <GND * 1 -60 490 0 0 0 0>
  <.TR TR1 1 -210 560 0 70 0 0 "lin" 1 "0" 1 "2 us" 1 "2000" 1 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <SPICEINIT SPICEINIT1 1 -170 760 -31 18 0 0 "set ngbehavior=lspsa" 1>
</Components>
<Wires>
  <350 440 350 490 "" 0 0 0 "">
  <350 440 370 440 "" 0 0 0 "">
  <430 380 520 380 "out" 520 330 57 "">
  <630 380 630 510 "" 0 0 0 "">
  <580 380 630 380 "" 0 0 0 "">
  <770 420 770 440 "" 0 0 0 "">
  <270 380 370 380 "" 0 0 0 "">
  <190 440 190 490 "" 0 0 0 "">
  <190 440 210 440 "" 0 0 0 "">
  <-150 440 -150 490 "" 0 0 0 "">
  <-150 440 -130 440 "" 0 0 0 "">
  <100 440 100 490 "" 0 0 0 "">
  <100 440 120 440 "" 0 0 0 "">
  <20 380 120 380 "" 0 0 0 "">
  <-60 440 -60 490 "" 0 0 0 "">
  <-60 440 -40 440 "" 0 0 0 "">
  <-70 380 -40 380 "" 0 0 0 "">
  <180 380 210 380 "" 0 0 0 "">
  <430 440 430 440 "vdd" 460 410 0 "">
  <770 360 770 360 "vdd" 800 330 0 "">
  <270 440 270 440 "vdd" 300 410 0 "">
  <-130 380 -130 380 "out" -198 360 0 "">
  <-70 440 -70 440 "vdd" -40 410 0 "">
  <180 440 180 440 "vdd" 210 410 0 "">
  <20 440 20 440 "vdd" 50 410 0 "">
</Wires>
<Diagrams>
  <Rect -36 735 666 175 3 #c0c0c0 1 00 1 0 5e-07 2e-06 1 -0.49705 2 6 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.v(out)" #0000ff 0 3 0 0 0>
	  <Mkr 6.23369e-07 268 -207 3 0 0>
	  <Mkr 1.92441e-06 701 -207 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 480 780 12 #000000 0 "(1924- 623.369)nS = 1300.631nS = T\nF=1/T=1/(589nS)=0.7689 Mhz">
</Paintings>
