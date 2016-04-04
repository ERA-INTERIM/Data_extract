%% netCDF read routine based on CS_read_netCDF.m 
clear all; close all;
nc_filename = 'ERA_SFC_20030731.nc'; 
                                
ncid=netcdf.open(nc_filename, 'nowrite'); 

% Get information about the contents of the file.
[numdims, numvars, ~, unlimdimID] = netcdf.inq(ncid);

disp(' '),disp(' '),disp(' ')
disp('________________________________________________________')
disp('^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~')
disp(['VARIABLES CONTAINED IN THE netCDF FILE: ' nc_filename ])
disp(' ')
for i = 0:numvars-1
    [varname, xtype, dimids, numatts] = netcdf.inqVar(ncid,i);
    disp(['--------------------< ' varname ' >---------------------'])
    flag = 0;
    for j = 0:numatts - 1
        attname1 = netcdf.inqAttName(ncid,i,j);
        attname2 = netcdf.getAtt(ncid,i,attname1);
         disp([attname1 ':  ' num2str(attname2)])
        if strmatch('add_offset',attname1)
            offset = attname2;
        end
        if strmatch('scale_factor',attname1)
            scale = attname2;
            flag = 1;
        end        
    end
    disp(' ')
    
    if flag
        varname=genvarname(varname);
        eval([varname '= double(double(netcdf.getVar(ncid,i))*scale + offset);'])
        disp('scale and offset')
    else
        varname=genvarname(varname);
        eval([varname '= double(netcdf.getVar(ncid,i));'])   
    end
end
disp('^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~')
disp('________________________________________________________')
disp(' '),disp(' ')

%%%%%%%%%%%%%%%%%%%%%
%Step 1: Specify the point from which to extract the data
x=1;        %Latitude entry (1,2 or 3)
y=1;        %Longitude entry (1,2 or 3)

%Step 2: Finding the surface net thermal radiation at locations 
str_11=[squeeze(str(1,1,:))];
str_12=[squeeze(str(1,2,:))]; 
str_13=[squeeze(str(1,3,:))]; 
str_21=[squeeze(str(2,1,:))]; 
str_22=[squeeze(str(2,2,:))]; 
str_23=[squeeze(str(2,3,:))]; 
str_31=[squeeze(str(3,1,:))]; 
str_32=[squeeze(str(3,2,:))]; 
str_33=[squeeze(str(3,3,:))];  

%Step 2: Finding the surface net thermal radiation at locations 
ttr_11=[squeeze(ttr(1,1,:))];
ttr_12=[squeeze(ttr(1,2,:))]; 
ttr_13=[squeeze(ttr(1,3,:))]; 
ttr_21=[squeeze(ttr(2,1,:))]; 
ttr_22=[squeeze(ttr(2,2,:))]; 
ttr_23=[squeeze(ttr(2,3,:))]; 
ttr_31=[squeeze(ttr(3,1,:))]; 
ttr_32=[squeeze(ttr(3,2,:))]; 
ttr_33=[squeeze(ttr(3,3,:))];  

%u component of wind
u10_11=[squeeze(u10(1,1,:))];
u10_12=[squeeze(u10(1,2,:))]; 
u10_13=[squeeze(u10(1,3,:))]; 
u10_21=[squeeze(u10(2,1,:))]; 
u10_22=[squeeze(u10(2,2,:))]; 
u10_23=[squeeze(u10(2,3,:))]; 
u10_31=[squeeze(u10(3,1,:))]; 
u10_32=[squeeze(u10(3,2,:))]; 
u10_33=[squeeze(u10(3,3,:))];

%v component of wind
v10_11=[squeeze(v10(1,1,:))];
v10_12=[squeeze(v10(1,2,:))]; 
v10_13=[squeeze(v10(1,3,:))]; 
v10_21=[squeeze(v10(2,1,:))]; 
v10_22=[squeeze(v10(2,2,:))]; 
v10_23=[squeeze(v10(2,3,:))]; 
v10_31=[squeeze(v10(3,1,:))]; 
v10_32=[squeeze(v10(3,2,:))]; 
v10_33=[squeeze(v10(3,3,:))];



% dlmwrite('str200307_11',str_11,'-append','delimiter','\t');
% dlmwrite('str200307_12',str_12,'-append','delimiter','\t');
% dlmwrite('str200307_13',str_13,'-append','delimiter','\t');
% dlmwrite('str200307_21',str_21,'-append','delimiter','\t');
% dlmwrite('str200307_22',str_22,'-append','delimiter','\t');
% dlmwrite('str200307_23',str_23,'-append','delimiter','\t');
% dlmwrite('str200307_31',str_31,'-append','delimiter','\t');
% dlmwrite('str200307_32',str_32,'-append','delimiter','\t');
% dlmwrite('str200307_33',str_33,'-append','delimiter','\t');
% 
% dlmwrite('ttr200307_11',ttr_11,'-append','delimiter','\t');
% dlmwrite('ttr200307_12',ttr_12,'-append','delimiter','\t');
% dlmwrite('ttr200307_13',ttr_13,'-append','delimiter','\t');
% dlmwrite('ttr200307_21',ttr_21,'-append','delimiter','\t');
% dlmwrite('ttr200307_22',ttr_22,'-append','delimiter','\t');
% dlmwrite('ttr200307_23',ttr_23,'-append','delimiter','\t');
% dlmwrite('ttr200307_31',ttr_31,'-append','delimiter','\t');
% dlmwrite('ttr200307_32',ttr_32,'-append','delimiter','\t');
% dlmwrite('ttr200307_33',ttr_33,'-append','delimiter','\t');
% 
% dlmwrite('u10200307_11',u10_11,'-append','delimiter','\t');
% dlmwrite('u10200307_12',u10_12,'-append','delimiter','\t');
% dlmwrite('u10200307_13',u10_13,'-append','delimiter','\t');
% dlmwrite('u10200307_21',u10_21,'-append','delimiter','\t');
% dlmwrite('u10200307_22',u10_22,'-append','delimiter','\t');
% dlmwrite('u10200307_23',u10_23,'-append','delimiter','\t');
% dlmwrite('u10200307_31',u10_31,'-append','delimiter','\t');
% dlmwrite('u10200307_32',u10_32,'-append','delimiter','\t');
% dlmwrite('u10200307_33',u10_33,'-append','delimiter','\t');
% 
% dlmwrite('v10200307_11',v10_11,'-append','delimiter','\t');
% dlmwrite('v10200307_12',v10_12,'-append','delimiter','\t');
% dlmwrite('v10200307_13',v10_13,'-append','delimiter','\t');
% dlmwrite('v10200307_21',v10_21,'-append','delimiter','\t');
% dlmwrite('v10200307_22',v10_22,'-append','delimiter','\t');
% dlmwrite('v10200307_23',v10_23,'-append','delimiter','\t');
% dlmwrite('v10200307_31',v10_31,'-append','delimiter','\t');
% dlmwrite('v10200307_32',v10_32,'-append','delimiter','\t');
% dlmwrite('v10200307_33',v10_33,'-append','delimiter','\t');

