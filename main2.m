clc; clear all; close all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% THONG SO HE THONG TREO CAU TRUOC
msf=1835; % khoi luong phan duoc treo truoc (kg)
Isf=1.241e4; % Mo men quan tinh phan duoc treo truoc doi voi truc x (kg.m2)
muf=260; % Khoi luong cau truoc (kg)
Iuf=1834; % Mo men quan tinh doi voi truc x cua cau truoc (kg.m2)
Csf=138670; % Do cung nhip truoc (N/m)
Ksf=9832; % He so can giam chan truoc (Ns/m)
Cbf=0; % Do cung thanh on dinh ngang truoc (N/rad)
dsf=0.74/2; % Nua khoang cach giua hai nhip truoc (m)
Ctf=293250; % Do cung lop truoc (N/m)
Ktf=26960; % He so can giam chan lop truoc (Ns/m)
duf=1.5/2; % Nua khoang cach giua hai banh xe (m)

g=9.81; % Gia toc trong truong
% Chuyen sang dang ma tran
Af=[msf 0 0 0;
    0 Isf 0 0;
    0 0 muf 0;
    0 0 0 Iuf];
Bf=[2*Ksf 0 -2*Ksf 0;
    0 2*dsf^2*Ksf 0 -2*dsf^2*Ksf;
    -2*Ksf 0 (2*Ksf+2*Ktf) 0;
    0 -2*dsf^2*Ksf 0 (2*dsf^2*Ksf+2*duf^2*Ktf)];
Cf=[2*Csf 0 -2*Csf 0;
    0 (2*dsf^2*Csf+Cbf) 0 -(2*dsf^2*Csf+Cbf);
    -2*Csf 0 (2*Csf+2*Ctf) 0;
    0 -(2*dsf^2*Csf+Cbf) 0 (2*dsf^2*Csf+2*duf^2*Ctf+Cbf)];

