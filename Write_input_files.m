clc; 
close all; 
clear all;

filename = 'lscale.inp.017';    %define file
M=dlmread(filename,'');    %discard text columns 
filename2='prof.inp.cre';
N=dlmread(filename2,'',2,0);

VV=dlmread('verticalvelocity_DomeC','');
SH=dlmread('specifichumidiy_DomeC','');

M(:,4)=VV; 
N(:,3)=SH;


dlmwrite('lscale.inp.024',M,'delimiter','\t');
% dlmwrite('prof.inp.019',N,'delimiter','\t');


% K=ones(132,8);                  %create matrix of only ones
% x=linspace(0,1,132);
y=ones(132,1);
u=y.*-3.1873;
v=y.*1.1988;

% K(:,4)=1-(x.^30);

% F=ones(132,8);
% F(:,4)=sqrt(x);
% G=F.*K;

% L=G.*M;                         %Multiply 
% plot(L(:,4),L(:,1))
% M(:,2)=u;
% M(:,3)=v;
% mean(L(:,4))
% N(:,4)=u;
% N(:,5)=v;

%  dlmwrite('lscale.inp.018',M,'delimiter','\t');   %write matrix to file (rename)
%  dlmwrite('prof.inp.cre.018',N,'delimiter','\t');
