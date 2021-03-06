* 2N7000 model
* External Node Designations
* Node 1 -> Drain
* Node 2 -> Gate
* Node 3 -> Source

.SUBCKT 2n7000 1 2 3
M1 9 7 8 8 MM L=100u W=100u

.MODEL MM NMOS LEVEL=1 IS=1e-32
+VTO=2.236 LAMBDA=0 KP=0.0932174
+CGSO=1.79115e-07 CGDO=1.0724e-11

RS 8 3 1.10523
D1 3 1 MD

.MODEL MD D IS=2.71011e-10 RS=0.0140826 N=1.5 BV=60
+IBV=1e-05 EG=1.16084 XTI=3.00131 TT=0
+CJO=3.41211e-11 VJ=4.67429 M=0.899864 FC=0.1

RDS 3 1 2.4e+11
RD 9 1 0.0001
RG 2 7 2.18034
D2 4 5 MD1

.MODEL MD1 D IS=1e-32 N=50
+CJO=7.93181e-11 VJ=0.643298 M=0.9 FC=1e-08

D3 0 5 MD2
.MODEL MD2 D IS=1e-10 N=0.400165 RS=3.00002e-06

RL 5 10 1
FI2 7 9 VFI2 -1
VFI2 4 0 0
EV16 10 0 9 7 1
CAP 11 10 1.58786e-10
FI1 7 9 VFI1 -1
VFI1 11 6 0
RCAP 6 10 1
D4 0 6 MD3

.MODEL MD3 D IS=1e-10 N=0.400165
.ENDS 2n7000
