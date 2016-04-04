clc;
close all;
clear all; 

u10_11=dlmread('u10200307_11');
u10_12=dlmread('u10200307_12');
u10_13=dlmread('u10200307_13');
u10_21=dlmread('u10200307_21');
u10_22=dlmread('u10200307_22');
u10_23=dlmread('u10200307_23');
u10_31=dlmread('u10200307_31');
u10_32=dlmread('u10200307_32');
u10_33=dlmread('u10200307_33');
u10_total=[u10_11 u10_12 u10_13 u10_21 u10_22 u10_23 u10_31 u10_32 u10_33];
u10_mean=mean(u10_total);
u_mean=mean(u10_mean)

v10_11=dlmread('v10200307_11');
v10_12=dlmread('v10200307_12');
v10_13=dlmread('v10200307_13');
v10_21=dlmread('v10200307_21');
v10_22=dlmread('v10200307_22');
v10_23=dlmread('v10200307_23');
v10_31=dlmread('v10200307_31');
v10_32=dlmread('v10200307_32');
v10_33=dlmread('v10200307_33');
v10_total=[v10_11 v10_12 v10_13 v10_21 v10_22 v10_23 v10_31 v10_32 v10_33];
v10_mean=mean(v10_total);
v_mean=mean(v10_mean)

hwv_11=sqrt(u10_11.^2+v10_11.^2);
hwv_12=sqrt(u10_12.^2+v10_12.^2);
hwv_13=sqrt(u10_13.^2+v10_13.^2);
hwv_21=sqrt(u10_21.^2+v10_21.^2);
hwv_22=sqrt(u10_22.^2+v10_22.^2);
hwv_23=sqrt(u10_23.^2+v10_23.^2);
hwv_31=sqrt(u10_31.^2+v10_31.^2);
hwv_32=sqrt(u10_32.^2+v10_32.^2);
hwv_33=sqrt(u10_33.^2+v10_33.^2);

hwv_total=[hwv_11 hwv_12 hwv_13 hwv_21 hwv_22 hwv_23 hwv_31 hwv_32 hwv_33];
hwv_mean=mean(hwv_total);

% figure;
% histogram(hwv_total);
%  title('Horizontal wind velocity histogram, all data')
%  xlabel('Horizontal wind speed in m/s')
%  ylabel('Number of measurements')
% 
%  figure;
%  histogram(hwv_32);
%  title('Horizontal wind velocity histogram, Dome C')
%  xlabel('Horizontal wind speed in m/s')
%  ylabel('Number of measurements')
%  
 
str_11=dlmread('str200307_11');
str_12=dlmread('str200307_12');
str_13=dlmread('str200307_13');
str_21=dlmread('str200307_21');
str_22=dlmread('str200307_22');
str_23=dlmread('str200307_23');
str_31=dlmread('str200307_31');
str_32=dlmread('str200307_32');
str_33=dlmread('str200307_33');
 
str_total=[str_11 str_12 str_13 str_21 str_22 str_23 str_31 str_32 str_33];
str_mean=mean(str_total);
str_mean2=mean(str_mean);
