clc; 
close all; 

filename1='field.032';  %define file
filename2='field.037';
filename3='field.036';
filename4='field.035';
filename5='field.034';
filename6='field.033';

%1 hour
M_1=dlmread(filename1,'', [7 0 138 12]);    %discard text columns 
M_2=dlmread(filename2,'', [7 0 138 12]);
M_3=dlmread(filename3,'', [7 0 138 12]);
M_4=dlmread(filename4,'', [7 0 138 12]);
M_5=dlmread(filename5,'', [7 0 138 12]);
M_6=dlmread(filename6,'', [7 0 138 12]);

% figure;
% hold on
% plot(M_1(:,4), M_1(:,2),'LineWidth', 2);
% plot(M_2(:,4), M_2(:,2),'LineWidth', 2);
% plot(M_3(:,4), M_3(:,2),'LineWidth', 2);
%  plot(M_4(:,4), M_4(:,2),'LineWidth', 2);
%  plot(M_5(:,4), M_5(:,2),'LineWidth', 2);
% plot(M_6(:,4), M_6(:,2),'LineWidth', 2);
% grid on
% title('Height-Temperature, 1 hour')
% xlabel('Temperature in Kelvin')
% ylabel('Height in meters')
% legend('w=0','w=0.5 m/s', 'w=1 cm/s', 'w=2 cm/s', 'w=4 cm/s', 'Orientation','horizontal')

%1 day
n_1=dlmread(filename1,'', [3204 0 3335 12]);
n_2=dlmread(filename2,'', [3204 0 3335 12]);
n_3=dlmread(filename3,'', [3204 0 3335 12]);
n_4=dlmread(filename4,'', [3204 0 3335 12]);
n_5=dlmread(filename5,'', [3204 0 3335 12]);
n_6=dlmread(filename6,'', [3204 0 3335 12]);

figure;
hold on
plot(n_1(:,4), n_1(:,2),'LineWidth', 2)
plot(n_2(:,4), n_2(:,2),'LineWidth', 2)
plot(n_3(:,4), n_3(:,2),'LineWidth', 2)
 plot(n_4(:,4), n_4(:,2),'LineWidth', 2)
 plot(n_5(:,4), n_5(:,2),'LineWidth', 2)
plot(n_6(:,4), n_6(:,2),'LineWidth', 2)

grid on
title('Height-Temperature for different values of k, after 1 day')
xlabel('Temperature in Kelvin')
ylabel('Height in meters')
 legend('k=0','k=0.2','k=0.4','k=0.6','k=0.8','k=1.0', 'Orientation','horizontal')


%3 days
k_1=dlmread(filename1,'', [9876 0 10007 12]);
k_2=dlmread(filename2,'', [9876 0 10007 12]);
k_3=dlmread(filename3,'', [9876 0 10007 12]);
k_4=dlmread(filename4,'', [9876 0 10007 12]);
k_5=dlmread(filename5,'', [9876 0 10007 12]);
k_6=dlmread(filename6,'', [9876 0 10007 12]);

figure;
hold on
plot(k_1(:,4), k_1(:,2),'LineWidth', 2)
plot(k_2(:,4), k_2(:,2),'LineWidth', 2)
plot(k_3(:,4), k_3(:,2),'LineWidth', 2)
plot(k_4(:,4), k_4(:,2),'LineWidth', 2)
plot(k_5(:,4), k_5(:,2),'LineWidth', 2)
plot(k_6(:,4), k_6(:,2),'LineWidth', 2)

grid on
title('Height-Temperature for different values of k, after 3 days')
xlabel('Temperature in Kelvin')
ylabel('Height in meters')
 legend('k=0','k=0.2','k=0.4','k=0.6','k=0.8','k=1.0', 'Orientation','horizontal')

%5 days
l_1=dlmread(filename1,'', [16548 0 16679 12]);
l_2=dlmread(filename2,'', [16548 0 16679 12]);
l_3=dlmread(filename3,'', [16548 0 16679 12]);
l_4=dlmread(filename4,'', [16548 0 16679 12]);
l_5=dlmread(filename5,'', [16548 0 16679 12]);
l_6=dlmread(filename6,'', [16548 0 16679 12]);

figure;
hold on
plot(l_1(:,4), l_1(:,2),'LineWidth', 2)
plot(l_2(:,4), l_2(:,2),'LineWidth', 2)
plot(l_3(:,4), l_3(:,2),'LineWidth', 2)
plot(l_4(:,4), l_4(:,2),'LineWidth', 2)
plot(l_5(:,4), l_5(:,2),'LineWidth', 2)
plot(l_6(:,4), l_6(:,2),'LineWidth', 2)

grid on
title('Height-Temperature for different values of k, after 5 days')
xlabel('Temperature in Kelvin')
ylabel('Height in meters')
legend('k=0','k=0.2','k=0.4','k=0.6','k=0.8','k=1.0', 'Orientation','horizontal')
 
%7 days
p_1=dlmread(filename1,'', [23220 0 23351 12]);
p_2=dlmread(filename2,'', [23220 0 23351 12]);
p_3=dlmread(filename3,'', [23220 0 23351 12]);
p_4=dlmread(filename4,'', [23220 0 23351 12]);
p_5=dlmread(filename5,'', [23220 0 23351 12]);
p_6=dlmread(filename6,'', [23220 0 23351 12]);

figure;
hold on
plot(p_1(:,4), p_1(:,2),'LineWidth', 2)
plot(p_2(:,4), p_2(:,2),'LineWidth', 2)
plot(p_3(:,4), p_3(:,2),'LineWidth', 2)
plot(p_4(:,4), p_4(:,2),'LineWidth', 2)
plot(p_5(:,4), p_5(:,2),'LineWidth', 2)
plot(p_6(:,4), p_6(:,2),'LineWidth', 2)
grid on
title('Height-Temperature for different values of k, after 1 week')
xlabel('Temperature in Kelvin')
ylabel('Height in meters')
 legend('k=0','k=0.2','k=0.4','k=0.6','k=0.8','k=1.0', 'Orientation','horizontal')
%10 days
j_1=dlmread(filename1,'',[33228 0 33359 12]);
j_2=dlmread(filename2,'',[33228 0 33359 12]);
j_3=dlmread(filename3,'',[33228 0 33359 12]);
j_4=dlmread(filename4,'',[33228 0 33359 12]);
j_5=dlmread(filename5,'',[33228 0 33359 12]);
j_6=dlmread(filename6,'',[33228 0 33359 12]);

figure;
hold on
plot(j_1(:,4), j_1(:,2),'LineWidth', 2)
plot(j_2(:,4), j_2(:,2),'LineWidth', 2)
plot(j_3(:,4), j_3(:,2),'LineWidth', 2)
plot(j_4(:,4), j_4(:,2),'LineWidth', 2)
plot(j_5(:,4), j_5(:,2),'LineWidth', 2)
plot(j_6(:,4), j_6(:,2),'LineWidth', 2)
grid on
title('Height-Temperature for different values of k, after 10 days')
xlabel('Temperature in Kelvin')
ylabel('Height in meters')
 legend('k=0','k=0.2','k=0.4','k=0.6','k=0.8','k=1.0', 'Orientation','horizontal')
 
%12 days
i_1=dlmread(filename1,'',[39900 0 40031 12]);
i_2=dlmread(filename2,'',[39900 0 40031 12]);
i_3=dlmread(filename3,'',[39900 0 40031 12]);
i_4=dlmread(filename4,'',[39900 0 40031 12]);
i_5=dlmread(filename5,'',[39900 0 40031 12]);
i_6=dlmread(filename6,'',[39900 0 40031 12]);

figure;
hold on
plot(i_1(:,4), i_1(:,2),'LineWidth', 2)
plot(i_2(:,4), i_2(:,2),'LineWidth', 2)
plot(i_3(:,4), i_3(:,2),'LineWidth', 2)
plot(i_4(:,4), i_4(:,2),'LineWidth', 2)
plot(i_5(:,4), i_5(:,2),'LineWidth', 2)
plot(i_6(:,4), i_6(:,2),'LineWidth', 2)

grid on
title('Height-Temperature for different values of k, after 12 days')
xlabel('Temperature in Kelvin')
ylabel('Height in meters')
 legend('k=0','k=0.2','k=0.4','k=0.6','k=0.8','k=1.0', 'Orientation','horizontal')
 
 %14 days
t_1=dlmread(filename1,'',[46572 0 46703 12]);
t_2=dlmread(filename2,'',[46572 0 46703 12]);
t_3=dlmread(filename3,'',[46572 0 46703 12]);
t_4=dlmread(filename4,'',[46572 0 46703 12]);
t_5=dlmread(filename5,'',[46572 0 46703 12]);
t_6=dlmread(filename6,'',[46572 0 46703 12]);
figure;
hold on
plot(t_1(:,4), t_1(:,2),'LineWidth', 2)
plot(t_2(:,4), t_2(:,2),'LineWidth', 2)
plot(t_3(:,4), t_3(:,2),'LineWidth', 2)
plot(t_4(:,4), t_4(:,2),'LineWidth', 2)
plot(t_5(:,4), t_5(:,2),'LineWidth', 2)
plot(t_6(:,4), t_6(:,2),'LineWidth', 2)


grid on
title('Height-Temperature for different values of k, after 2 weeks')
xlabel('Temperature in Kelvin')
ylabel('Height in meters')
 legend('k=0','k=0.2','k=0.4','k=0.6','k=0.8','k=1.0', 'Orientation','horizontal')