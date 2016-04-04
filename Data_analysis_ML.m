clc;
close all;
clear all;

%Step 1: Retrieving the heights from DALES input-file
 M=dlmread('lscale.inp.009','',2,0);                             %Import DALES input file
 h=M(:,1);                                                       %Create vector containing the heights
% h_1=repmat(h,1,248);
%Step 2: Temperatures at each location 
T_11=dlmread('temperature200307_11c');
T_12=dlmread('temperature200307_12c');
T_13=dlmread('temperature200307_13c');
T_21=dlmread('temperature200307_21c');
T_22=dlmread('temperature200307_22c');
T_23=dlmread('temperature200307_23c');
T_31=dlmread('temperature200307_31c');
T_32=dlmread('temperature200307_32c');
T_33=dlmread('temperature200307_33c');

%Step 3: Pressures at each location 
p_11=dlmread('pressure200307_11c');
p_12=dlmread('pressure200307_12c');
p_13=dlmread('pressure200307_13c');
p_21=dlmread('pressure200307_21c');
p_22=dlmread('pressure200307_22c');
p_23=dlmread('pressure200307_23c');
p_31=dlmread('pressure200307_31c');
p_32=dlmread('pressure200307_32c');
p_33=dlmread('pressure200307_33c');

%Step 4: Specific Humidity at each location
sh_11=dlmread('specifichumidity200307_11c');
sh_12=dlmread('specifichumidity200307_12c');
sh_13=dlmread('specifichumidity200307_13c');
sh_21=dlmread('specifichumidity200307_21c');
sh_22=dlmread('specifichumidity200307_22c');
sh_23=dlmread('specifichumidity200307_23c');
sh_31=dlmread('specifichumidity200307_31c');
sh_32=dlmread('specifichumidity200307_32c');
sh_33=dlmread('specifichumidity200307_33c');

%Step 5: Vertical Velocity at each location
vv_11=dlmread('verticalvelocity200307_11c');
vv_12=dlmread('verticalvelocity200307_12c');
vv_13=dlmread('verticalvelocity200307_13c');
vv_21=dlmread('verticalvelocity200307_21c');
vv_22=dlmread('verticalvelocity200307_22c');
vv_23=dlmread('verticalvelocity200307_23c');
vv_31=dlmread('verticalvelocity200307_31c');
vv_32=dlmread('verticalvelocity200307_32c');
vv_33=dlmread('verticalvelocity200307_33c');


vv_t=cat(3,vv_11,vv_12,vv_13,vv_21,vv_22,vv_23,vv_31,vv_32,vv_33);
vv_mndomeC=mean(vv_32,2);
vv_stddomeC=std(vv_32,0,2);

sh_t=cat(3,sh_11,sh_12,sh_13,sh_21,sh_22,sh_23,sh_31,sh_32,sh_33);
sh_tt=[sh_11 sh_12 sh_13 sh_21 sh_22 sh_23 sh_31 sh_32 sh_33];
histogram(abs(sh_tt));

  title('Specific Humidity Histogram, ERA-Interim data')
  xlabel('Specific Humidity')
  ylabel('Number of measurements')
dlmwrite('verticalvelocity_DomeC',vv_mndomeC,'delimiter','\t');
% figure;
% hold on;
% plot(vv_mndomeC,h);
% plot(vv_mndomeC+1.96*vv_stddomeC./sqrt(248),h);
% plot(vv_mndomeC-1.96*vv_stddomeC/sqrt(248),h);
%  title('95% Confidence Interval for Vertical Velocity, Dome C')
%  xlabel('Vertical Velocity')
%  ylabel('Height in meters')
%  legend('Mean','Upper Bound','Lower Bound');
% 
% hold off;
% vv_mean=mean(vv_t,3);
% vv_totalmean=mean(vv_mean,2);
% vv_totalstd=std(vv_mean,0,2);
%  figure;
%  hold on;
%  plot(vv_totalmean,h);
% 
%   plot(vv_totalmean+1.96*vv_totalstd./sqrt(248),h);
%   plot(vv_totalmean-1.96*vv_totalstd./sqrt(248),h);
%   title('95% Confidence Interval for Vertical Velocity, All data')
%  xlabel('Vertical Velocity')
%  ylabel('Height in meters')
%  legend('Mean','Upper Bound','Lower Bound');

%  hold off;
%  figure;
%  bar3(h,vv_totalmean);


% filename = 'lscale.inp.009';    %define file
% M=dlmread(filename,'', 2,0);    %discard text columns 

% M(:,4)=vv_totalmean;

T_domeC=mean(T_32,2);
std_domeC=std(T_32,0,2);
 
figure;
hold on;
plot(T_domeC,h);
plot(T_domeC+1.96*std_domeC./sqrt(248),h);
plot(T_domeC-1.96*std_domeC./sqrt(248),h)
title('95% Confidence Interval, Temperature Dome C')
xlabel('Temperature in K')
ylabel('Height in meters')

p_domeC=mean(p_32,2);

% dlmwrite('lscale.inp.017',M,'delimiter','\t');   %write matrix to file (rename)

% x=linspace(0,248*3/24,248);
% contourf(x,h,vv_mean);
% colorbar;
% title('Vertical Velocity Contourplot Mean')
% xlabel('Time in days')
% ylabel('Height in meters')

% figure; 
% contourf(x,h,T_11);
% colorbar;
% title('Temperature Contourplot 11')
% xlabel('Time in days')
% ylabel('Height in meters')

% plot(mean(sh_11,2),h);
% plot(mean(sh_11,2)+std(sh_11,0,2),h);
% plot(mean(sh_11,2)-std(sh_11,0,2),h);