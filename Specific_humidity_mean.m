clc;
close all;
clear all;

filename1='specifichumidity200307_11c';
filename2='specifichumidity200307_12c';
filename3='specifichumidity200307_13c';
filename4='specifichumidity200307_21c';
filename5='specifichumidity200307_22c';
filename6='specifichumidity200307_23c';
filename7='specifichumidity200307_31c';
filename8='specifichumidity200307_32c';
filename9='specifichumidity200307_33c';

sh1=dlmread(filename1);
sh2=dlmread(filename2);
sh3=dlmread(filename3);
sh4=dlmread(filename4);
sh5=dlmread(filename5);
sh6=dlmread(filename6);
sh7=dlmread(filename7);
sh8=dlmread(filename8);
sh9=dlmread(filename9);


sh_domeC=mean(sh8,2);
std_domeC=std(sh8,0,2); 
sh_total=[sh1 sh2 sh3 sh4 sh5 sh6 sh7 sh8 sh9];
sh_mean=mean(sh_total,2);

filename = 'lscale.inp.017';    %define file
M=dlmread(filename,''); 
h=M(:,1);
hold on;
plot(sh_domeC,h);
plot(sh_domeC+1.96*std_domeC./sqrt(248),h);
plot(sh_domeC-1.96*std_domeC./sqrt(248),h);
legend('Mean','Upper Bound','Lower Bound');

title('95% Confidence Interval for Specific Humidity, Dome C, n=248')
  xlabel('Specific Humidity in kg/kg')
  ylabel('Height in meters')


% plot(sh_mean,M(:,1));

% dlmwrite('specifichumidiy_DomeC',sh_domeC,'delimiter','\t');