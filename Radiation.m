clc;
close all;
clear all;

str_11=dlmread('str200307_11');
str_12=dlmread('str200307_12');
str_13=dlmread('str200307_13');
str_21=dlmread('str200307_21');
str_22=dlmread('str200307_22');
str_23=dlmread('str200307_23');
str_31=dlmread('str200307_31');
str_32=dlmread('str200307_32');
str_33=dlmread('str200307_33');

ttr_11=dlmread('ttr200307_11');
ttr_12=dlmread('ttr200307_12');
ttr_13=dlmread('ttr200307_13');
ttr_21=dlmread('ttr200307_21');
ttr_22=dlmread('ttr200307_22');
ttr_23=dlmread('ttr200307_23');
ttr_31=dlmread('ttr200307_31');
ttr_32=dlmread('ttr200307_32');
ttr_33=dlmread('ttr200307_33');

%sfc_sens_flx=gradient(ttr_11);
colour_teal= [107 134 137] ./ 255;

for i=1:62
   ttrdiff(4*i-3,1)=ttr_32(4*i-3,1);
   ttrdiff(4*i-2,1)=ttr_32(4*i-2,1)-ttr_32(4*i-3,1);
   ttrdiff(4*i-1,1)=ttr_32(4*i-1,1)-ttr_32(4*i-2,1);
   ttrdiff(4*i,1)=ttr_32(4*i,1)-ttr_32(4*i-1,1);
    
end

for k=1:247
       if ttrdiff(k+1,1)==0
       ttrdiff(k,1)=ttrdiff(k,1)/4;
             else ttrdiff(k,1)=ttrdiff(k,1);
       end
end

for k=1:248
    if ttrdiff(k,1)==0
        ttrdiff(k,1)=ttrdiff(k-1,1);
    else ttrdiff(k,1)=ttrdiff(k,1);
    end
end

topflux=ttrdiff/(3*3600);
histogram(topflux,20,'FaceColor',colour_teal);

for i=1:62
   strdiff(4*i-3,1)=str_32(4*i-3,1);
   strdiff(4*i-2,1)=str_32(4*i-2,1)-str_32(4*i-3,1);
   strdiff(4*i-1,1)=str_32(4*i-1,1)-str_32(4*i-2,1);
   strdiff(4*i,1)=str_32(4*i,1)-str_32(4*i-1,1);
end

for k=1:247
       if strdiff(k+1,1)==0
       strdiff(k,1)=strdiff(k,1)/4;
             else strdiff(k,1)=strdiff(k,1);
       end
end

for k=1:248
    if strdiff(k,1)==0
        strdiff(k,1)=strdiff(k-1,1);
    else strdiff(k,1)=strdiff(k,1);
    end
end
surfaceflux=strdiff/(3*3600);
figure;
histogram(surfaceflux,20,'FaceColor',colour_teal);



%sfc_sens_flxcum=[sfc_sens_flxtmp(1:4,indLatC,indLonC); sfc_sens_flxtmp(4,indLatC,indLonC)+sfc_sens_flxtmp(5:end,indLatC,indLonC)];  %ECWMF writes accumulated fields that are re-initialized after 4 timesteps
%sfc_lat_flxcum=[sfc_lat_flxtmp(1:4,indLatC,indLonC); sfc_lat_flxtmp(4,indLatC,indLonC)+sfc_lat_flxtmp(5:end,indLatC,indLonC)];


%sfc_sens_flx=gradient(sfc_sens_flxcum)/(3*3600);                 %The ECWMF files give the time-integrated fluxes, so we differentiate. 
%sfc_lat_flx=gradient(sfc_lat_flxcum)/(3*3600); 

