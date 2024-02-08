v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 180 -1290 180 -1260 {
lab=Vout}
N 180 -1380 180 -1370 {
lab=VDD}
N 180 -1190 180 -1180 {
lab=GND}
N 100 -1340 100 -1230 {
lab=Vin}
N 100 -1230 140 -1230 {
lab=Vin}
N 180 -1290 360 -1290 {
lab=Vout}
N 290 -1230 290 -1190 {
lab=GND}
N -460 -1150 -460 -1120 {
lab=GND}
N -140 -1170 -140 -1140 {
lab=GND}
N -140 -1260 -140 -1230 {
lab=VDD}
N 180 -1380 220 -1380 {
lab=VDD}
N 220 -1380 220 -1340 {
lab=VDD}
N 180 -1340 220 -1340 {
lab=VDD}
N 180 -1190 220 -1190 {
lab=GND}
N 220 -1230 220 -1190 {
lab=GND}
N 180 -1310 180 -1290 {
lab=Vout}
N 180 -1390 180 -1380 {
lab=VDD}
N 180 -1200 180 -1190 {
lab=GND}
N 180 -1230 220 -1230 {
lab=GND}
N 80 -1290 100 -1290 {
lab=Vin}
N 360 -1290 370 -1290 {
lab=Vout}
N -460 -1230 -460 -1210 {
lab=Vin}
N 100 -1340 140 -1340 {}
C {devices/lab_pin.sym} -460 -1230 1 0 {name=p1 sig_type=std_logic lab=Vin
}
C {devices/vsource.sym} -140 -1200 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} -460 -1180 0 0 {name=V2 value=PULSE(0,1.8,0ns,1ns,1ns,50ns,104ns) savecurrent=false}
C {devices/gnd.sym} 180 -1180 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -460 -1120 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -140 -1140 0 0 {name=l3 lab=GND}
C {devices/capa.sym} 290 -1260 0 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 290 -1190 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -140 -1250 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 180 -1390 1 0 {name=p3 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 80 -1290 0 0 {name=p4 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 360 -1290 2 0 {name=p5 sig_type=std_logic lab=Vout
}
C {devices/code_shown.sym} 430 -1400 0 0 {name=NGSPICE only_toplevel=true value="
.tran 10ns 100ns
*.dc V2 0 1.8 0.01


.control
save vout vin
run
*tran 10ns 100ns
plot v(vout) v(vin)

.endc

"
}
C {devices/code.sym} -570 -1410 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {sky130_fd_pr/pfet_01v8.sym} 160 -1340 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 160 -1230 0 0 {name=M2
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
