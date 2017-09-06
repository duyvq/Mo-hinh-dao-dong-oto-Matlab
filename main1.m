clc; clear all; close all;

ms=980;    % khoi luong phan duoc treo (kg)
J=1450;     % momen quan tinh khoi luong luong duoc treo (kg.m^2)
mu1=85;     % khoi luong phan khong duoc treo cau truoc (kg)
mu2=190;     % khoi luong phan khong duoc treo cau sau (kg)

a=1.554;   	% chieu dai tu trong tam den tam vet banh xe phia truoc
b=1.246;  	% chieu dai tu trong tam den tam vet banh xe phia sau
l=2.8;    	% chieu dai co so (m)

ks1=22850;  % do cung phan tu dan hoi he thong treo truoc
ks2=23850;  % do cung phan tu dan hoi he thong treo sau
bs1=950; 	% he so can giam chan he thong treo truoc
bs2=950; 	% he so can giam chan he thong treo sau
bsemimax=950;

kt1=350000; % do cung lop truoc
kt2=350000; % do cung lop sau

%Cac ma tran he so
M=[ms 0 0 0;
    0 J 0 0;
    0 0 mu1 0;
    0 0 0 mu2];
B=[bs1+bs2 -a*bs1+b*bs2 -bs1 -bs2;
   -a*bs1+b*bs2 a^2*bs1+b^2*bs2 a*bs1 -b*bs2;
   -bs1 a*bs1 bs1 0;
   -bs2 -b*bs2 0 bs2];
K=[ks1+ks2 -a*ks1+b*ks2 -ks1 -ks2;
   -a*ks1+b*ks2 a^2*ks1+b^2*ks2 a*ks1 -b*ks2;
   -ks1 a*ks1 ks1+kt1 0;
   -ks2 -b*ks2 0 ks2+kt2];
