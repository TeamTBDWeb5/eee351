v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -140 100 -110 {
lab=Vout}
N 100 -230 100 -220 {
lab=VDD}
N 100 -40 100 -30 {
lab=VSS}
N 20 -190 20 -80 {
lab=Vin}
N 20 -80 60 -80 {
lab=Vin}
N 100 -140 280 -140 {
lab=Vout}
N 100 -230 140 -230 {
lab=VDD}
N 140 -230 140 -190 {
lab=VDD}
N 100 -190 140 -190 {
lab=VDD}
N 100 -40 140 -40 {
lab=VSS}
N 140 -80 140 -40 {
lab=VSS}
N 100 -160 100 -140 {
lab=Vout}
N 100 -240 100 -230 {
lab=VDD}
N 100 -50 100 -40 {
lab=VSS}
N 100 -80 140 -80 {
lab=VSS}
N 0 -140 20 -140 {
lab=Vin}
N 280 -140 290 -140 {
lab=Vout}
N 20 -190 60 -190 {
lab=Vin}
C {devices/ipin.sym} 0 -140 0 0 {name=p1 lab=Vin}
C {devices/iopin.sym} 100 -30 1 0 {name=p2 lab=VSS}
C {devices/iopin.sym} 100 -240 3 0 {name=p6 lab=VDD}
C {devices/opin.sym} 290 -140 0 0 {name=p3 lab=Vout}
C {sky130_fd_pr/pfet_01v8.sym} 80 -190 0 0 {name=M1
L=0.5
W=10
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
C {sky130_fd_pr/nfet_01v8.sym} 80 -80 0 0 {name=M2
L=0.5
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
