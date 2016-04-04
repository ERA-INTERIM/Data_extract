clc; 
close all; 
clear all;


filename_1 = 'verticalvelocity20030701'; 
filename_2 = 'verticalvelocity20030702'; 
filename_3 = 'verticalvelocity20030703'; 
filename_4 = 'verticalvelocity20030704'; 
filename_5 = 'verticalvelocity20030705'; 
filename_6 = 'verticalvelocity20030706'; 
filename_7 = 'verticalvelocity20030707'; 
filename_8 = 'verticalvelocity20030708'; 
filename_9 = 'verticalvelocity20030709'; 
filename_10 = 'verticalvelocity20030710'; 
filename_11 = 'verticalvelocity20030711'; 
filename_12 = 'verticalvelocity20030712'; 
filename_13 = 'verticalvelocity20030713'; 
filename_14 = 'verticalvelocity20030714'; 
filename_15 = 'verticalvelocity20030715'; 
filename_16 = 'verticalvelocity20030716'; 
filename_17 = 'verticalvelocity20030717'; 
filename_18 = 'verticalvelocity20030718'; 
filename_19 = 'verticalvelocity20030719'; 
filename_20 = 'verticalvelocity20030720'; 
filename_21 = 'verticalvelocity20030721'; 
filename_22 = 'verticalvelocity20030722'; 
filename_23 = 'verticalvelocity20030723'; 
filename_24 = 'verticalvelocity20030724'; 
filename_25 = 'verticalvelocity20030725'; 
filename_26 = 'verticalvelocity20030726'; 
filename_27 = 'verticalvelocity20030727'; 
filename_28 = 'verticalvelocity20030728'; 
filename_29 = 'verticalvelocity20030729'; 
filename_30 = 'verticalvelocity20030730'; 
filename_31 = 'verticalvelocity20030731'; 

M_1=dlmread(filename_1,'');   
M_2=dlmread(filename_2,''); 
M_3=dlmread(filename_3,'');   
M_4=dlmread(filename_4,''); 
M_5=dlmread(filename_5,'');   
M_6=dlmread(filename_6,''); 
M_7=dlmread(filename_7,'');   
M_8=dlmread(filename_8,''); 
M_9=dlmread(filename_9,'');   
M_10=dlmread(filename_10,''); 
M_11=dlmread(filename_11,'');   
M_12=dlmread(filename_12,''); 
M_13=dlmread(filename_13,'');   
M_14=dlmread(filename_14,''); 
M_15=dlmread(filename_15,'');   
M_16=dlmread(filename_16,''); 
M_17=dlmread(filename_17,'');   
M_18=dlmread(filename_18,''); 
M_19=dlmread(filename_19,'');   
M_20=dlmread(filename_20,''); 
M_21=dlmread(filename_21,'');   
M_22=dlmread(filename_22,''); 
M_23=dlmread(filename_23,'');   
M_24=dlmread(filename_24,''); 
M_25=dlmread(filename_25,'');   
M_26=dlmread(filename_26,''); 
M_27=dlmread(filename_27,'');   
M_28=dlmread(filename_28,''); 
M_29=dlmread(filename_29,'');   
M_30=dlmread(filename_30,''); 
M_31=dlmread(filename_31,''); 

N_1=mean(M_1,2);
N_2=mean(M_2,2);
N_3=mean(M_3,2);
N_4=mean(M_4,2);
N_5=mean(M_5,2);
N_6=mean(M_6,2);
N_7=mean(M_7,2);
N_8=mean(M_8,2);
N_9=mean(M_9,2);
N_10=mean(M_10,2);
N_11=mean(M_11,2);
N_12=mean(M_12,2);
N_13=mean(M_13,2);
N_14=mean(M_14,2);
N_15=mean(M_15,2);
N_16=mean(M_16,2);
N_17=mean(M_17,2);
N_18=mean(M_18,2);
N_19=mean(M_19,2);
N_20=mean(M_20,2);
N_21=mean(M_21,2);
N_22=mean(M_22,2);
N_23=mean(M_23,2);
N_24=mean(M_24,2);
N_25=mean(M_25,2);
N_26=mean(M_26,2);
N_27=mean(M_27,2);
N_28=mean(M_28,2);
N_29=mean(M_29,2);
N_30=mean(M_30,2);
N_31=mean(M_31,2);            

M_t=[M_1 M_2 M_3 M_4 M_5 M_6 M_7 M_8 M_9 M_10 M_11 M_12 M_13 M_14 M_15 M_16 M_17 M_18 M_19 M_20 M_21 M_22 M_23 M_24 M_25 M_26 M_27 M_28 M_29 M_30 M_31];
N_t=[N_1 N_2 N_3 N_4 N_5 N_6 N_7 N_8 N_9 N_10 N_11 N_12 N_13 N_14 N_15 N_16 N_17 N_18 N_19 N_20 N_21 N_22 N_23 N_24 N_25 N_26 N_27 N_28 N_29 N_30 N_31];

A=mean(M_t,2);
level=linspace(60,1,60)';
B_1=repmat(level,1,31);

v_av=mean(M_t,2);
v_R=max(M_t,[],2)-min(M_t,[],2)/2;
v_std=std(M_t,0,2);                         %Standard deviation per level
v_unc=v_std/(sqrt(248));                    %Standard error of the mean per level
v_spread=v_R/(2*sqrt(248));
plot(N_t,level);
figure;
hold on
x=level;
y1=v_av+v_std;
y2=v_av-v_std;
plot(v_av,level);
plot(y1,level);
plot(y2,level);



% v_ssd=std(w_s,0,2);



% dlmwrite('verticalvelocity_total',N,'delimiter','\t');   %write matrix to file (rename)

