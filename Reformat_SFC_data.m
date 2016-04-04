clc; 
close all; 
clear all;


filename1 = 'u10200307_11'; 

M=dlmread(filename1,'');
k=132;
M_1=dlmread(filename1,'', [0*k 0 (1*k)-1 7]);  
M_2=dlmread(filename1,'', [1*k 0 (2*k)-1 7]);  
M_3=dlmread(filename1,'', [2*k 0 (3*k)-1 7]);  
M_4=dlmread(filename1,'', [3*k 0 (4*k)-1 7]);  
M_5=dlmread(filename1,'', [4*k 0 (5*k)-1 7]);  
M_6=dlmread(filename1,'', [5*k 0 (6*k)-1 7]);  
M_7=dlmread(filename1,'', [6*k 0 (7*k)-1 7]);  
M_8=dlmread(filename1,'', [7*k 0 (8*k)-1 7]);  
M_9=dlmread(filename1,'', [8*k 0 (9*k)-1 7]);  
M_10=dlmread(filename1,'',[9*k 0 (10*k)-1 7]);  
M_11=dlmread(filename1,'', [10*k 0 (11*k)-1 7]);  
M_12=dlmread(filename1,'', [11*k 0 (12*k)-1 7]);  
M_13=dlmread(filename1,'', [12*k 0 (13*k)-1 7]);  
M_14=dlmread(filename1,'', [13*k 0 (14*k)-1 7]);  
M_15=dlmread(filename1,'', [14*k 0 (15*k)-1 7]);  
M_16=dlmread(filename1,'', [15*k 0 (16*k)-1 7]);  
M_17=dlmread(filename1,'', [16*k 0 (17*k)-1 7]);  
M_18=dlmread(filename1,'', [17*k 0 (18*k)-1 7]);  
M_19=dlmread(filename1,'', [18*k 0 (19*k)-1 7]);  
M_20=dlmread(filename1,'',[19*k 0 (20*k)-1 7]);  
M_21=dlmread(filename1,'', [20*k 0 (21*k)-1 7]);  
M_22=dlmread(filename1,'', [21*k 0 (22*k)-1 7]);  
M_23=dlmread(filename1,'', [22*k 0 (23*k)-1 7]);  
M_24=dlmread(filename1,'', [23*k 0 (24*k)-1 7]);  
M_25=dlmread(filename1,'', [24*k 0 (25*k)-1 7]);  
M_26=dlmread(filename1,'', [25*k 0 (26*k)-1 7]);  
M_27=dlmread(filename1,'', [26*k 0 (27*k)-1 7]);  
M_28=dlmread(filename1,'', [27*k 0 (28*k)-1 7]);  
M_29=dlmread(filename1,'', [28*k 0 (29*k)-1 7]);  
M_30=dlmread(filename1,'', [29*k 0 (30*k)-1 7]);  
M_31=dlmread(filename1,'',[30*k 0 (31*k)-1 7]); 

M_t=[M_1 M_2 M_3 M_4 M_5 M_6 M_7 M_8 M_9 M_10 M_11 M_12 M_13 M_14 M_15 M_16 M_17 M_18 M_19 M_20 M_21 M_22 M_23 M_24 M_25 M_26 M_27 M_28 M_29 M_30 M_31];

% dlmwrite('pressure200307_33c',M_t,'delimiter','\t'); 