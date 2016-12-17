% %confinement
% load sus17zoom50
% confactor1=Pcore./Ptotal;
% Biref1=abs(neff(:,5)-neff(:,6));
% neff1=neff(:,6)';
% Ixy_end1=Ixy_end;
% Ptotal1=Ptotal;
% save analysis wave confactor1 Biref1 neff1 Ixy_end1 Ptotal1
% clear all
% 
% load sus16zoom50
% load analysis
% confactor2=Pcore./Ptotal;
% Biref2=abs(neff(:,5)-neff(:,6));
% neff2=neff(:,6)';
% Ixy_end2=Ixy_end;
% Ptotal2=Ptotal;
% % neff2=neff2(1:30); %here becoz the first is confined withing index=30 4.2micron. 
% save analysis  wave confactor1 Biref1 neff1 Ixy_end1 Ptotal1 confactor2 Biref2 neff2 Ixy_end2 Ptotal2
% clear all
% 
% load sus15zoom50
% load analysis
% confactor3=Pcore./Ptotal;
% Biref3=abs(neff(:,5)-neff(:,6));
% neff3=neff(:,6)';
% Ixy_end3=Ixy_end;
% Ptotal3=Ptotal;
% % neff2=neff2(1:30); %here becoz the first is confined withing index=30 4.2micron. 
% save analysis  wave confactor1 Biref1 neff1 Ixy_end1 Ptotal1 confactor2 Biref2 neff2 Ixy_end2 Ptotal2 confactor3 Biref3 neff3 Ixy_end3 Ptotal3
% clear all
% 
% load sus14zoom50
% load analysis
% confactor4=Pcore./Ptotal;
% Biref4=abs(neff(:,5)-neff(:,6));
% neff4=neff(:,6)';
% Ixy_end4=Ixy_end;
% Ptotal4=Ptotal;
% % neff2=neff2(1:30); %here becoz the first is confined withing index=30 4.2micron. 
% save analysis  wave confactor1 Biref1 neff1 Ixy_end1 Ptotal1 confactor2 Biref2 neff2 Ixy_end2 Ptotal2 confactor3 Biref3 neff3 Ixy_end3 Ptotal3....
%     confactor4 Biref4 neff4 Ixy_end4 Ptotal4
% clear all
% 
% load sus13zoom50
% load analysis
% confactor5=Pcore./Ptotal;
% Biref5=abs(neff(:,5)-neff(:,6));
% neff5=neff(:,6)';
% Ixy_end5=Ixy_end;
% Ptotal5=Ptotal;
% % neff2=neff2(1:30); %here becoz the first is confined withing index=30 4.2micron. 
% save analysis  wave confactor1 Biref1 neff1 Ixy_end1 Ptotal1 confactor2 Biref2 neff2 Ixy_end2 Ptotal2 confactor3 Biref3 neff3 Ixy_end3 Ptotal3....
%     confactor4 Biref4 neff4 Ixy_end4 Ptotal4 confactor5 Biref5 neff5 Ixy_end5 Ptotal5
% clear all

load analysis
range=3:19;

% fig= figure(1);
% clf(1)
% axes1 = axes('Parent',fig,'LineWidth',3,'FontSize',30,...
%     'FontName','Times New Roman');
% box('on');
% plot(wave(range),confactor1(range),'-red','linewidth',3);
% hold on
% plot(wave(range),confactor2(range),'--green','linewidth',3);
% hold on
% plot(wave(range),confactor3(range),'-+blue','linewidth',3);
% set(axes1,'FontName','Times New Roman','FontSize',30,'lineWidth',3);
% xlabel('Wavelength (\mum)')
% ylabel('Confinement (Pcore/Ptotal)');
% legend('suspended','nonsuspended');

% fig= figure(2);
% clf(2)
% axes1 = axes('Parent',fig,'LineWidth',3,'FontSize',30,...
%     'FontName','Times New Roman');
% box('on');
% plot(wave(range),Biref1(range),'-red','linewidth',3);
% hold on
% plot(wave(range),Biref2(range),'--green','linewidth',3);
% hold on
% plot(wave(range),Biref3(range),'-+blue','linewidth',3);
% set(axes1,'FontName','Times New Roman','FontSize',30,'lineWidth',3);
% xlabel('Wavelength (\mum)')
% ylabel('Birefringence');
% legend('suspended','nonsuspended');

wave=wave(range);
wav=linspace(wave(1),wave(end),length(wave)*5);
h=wav(2)-wav(1);
c=3e8;

neff1=interp1(wave,neff1(range),wav,'spline');
Dneff1=diff(neff1)/h;
Dneff1=interp1(wav(1:end-1),Dneff1,wav,'spline');
DDneff1=diff(Dneff1)/h;
DDneff1=interp1(wav(1:end-1),DDneff1,wav,'spline');


neff2=interp1(wave,neff2(range),wav,'spline');
Dneff2=diff(neff2)/h;
Dneff2=interp1(wav(1:end-1),Dneff2,wav,'spline');
DDneff2=diff(Dneff2)/h;
DDneff2=interp1(wav(1:end-1),DDneff2,wav,'spline');


neff3=interp1(wave,neff3(range),wav,'spline');
Dneff3=diff(neff3)/h;
Dneff3=interp1(wav(1:end-1),Dneff3,wav,'spline');
DDneff3=diff(Dneff3)/h;
DDneff3=interp1(wav(1:end-1),DDneff3,wav,'spline');

neff4=interp1(wave,neff4(range),wav,'spline');
Dneff4=diff(neff4)/h;
Dneff4=interp1(wav(1:end-1),Dneff4,wav,'spline');
DDneff4=diff(Dneff4)/h;
DDneff4=interp1(wav(1:end-1),DDneff4,wav,'spline');

neff5=interp1(wave,neff5(range),wav,'spline');
Dneff5=diff(neff5)/h;
Dneff5=interp1(wav(1:end-1),Dneff5,wav,'spline');
DDneff5=diff(Dneff5)/h;
DDneff5=interp1(wav(1:end-1),DDneff5,wav,'spline');

gvd1=-DDneff1.*wav/c*1e6;
gvd2=-DDneff2.*wav/c*1e6;
gvd3=-DDneff3.*wav/c*1e6;
gvd4=-DDneff4.*wav/c*1e6;
gvd5=-DDneff5.*wav/c*1e6;
Dgvd1=diff(gvd1)/h;
Dgvd1=interp1(wav(1:end-1),Dgvd1,wav,'spline');
Dgvd2=diff(gvd2)/h;
Dgvd2=interp1(wav(1:end-1),Dgvd2,wav,'spline');
Dgvd3=diff(gvd3)/h;
Dgvd3=interp1(wav(1:end-1),Dgvd3,wav,'spline');
Dgvd4=diff(gvd4)/h;
Dgvd4=interp1(wav(1:end-1),Dgvd4,wav,'spline');
Dgvd5=diff(gvd5)/h;
Dgvd5=interp1(wav(1:end-1),Dgvd5,wav,'spline');

load corxy_Zoom50
aeff1=effectivearea(Ixy_end1,wave,Ptotal1,corxy);
aeff2=effectivearea(Ixy_end2,wave,Ptotal2,corxy);
aeff3=effectivearea(Ixy_end3,wave,Ptotal3,corxy);
aeff4=effectivearea(Ixy_end4,wave,Ptotal4,corxy);
aeff5=effectivearea(Ixy_end5,wave,Ptotal5,corxy);

% wav=wav*1e6;%to avoid ten to the power -6 in figure.

% fig= figure(1);
% clf(1)
% axes1 = axes('Parent',fig,'LineWidth',3,'FontSize',30,...
%     'FontName','Times New Roman');
% wav=wav*1e6;
% plot(wav,gvd1,'-red','linewidth',3);
% hold on
% plot(wav,gvd2,'--green','linewidth',3);
% hold on
% plot(wav,gvd3,':blue','linewidth',3);
% hold on
% plot(wav,gvd4,'-.red','linewidth',3);
% hold on
% plot(wav,gvd5,'*green','linewidth',3);
% % plot(wav,gvd1,'-black','linewidth',3);
% % hold on
% % plot(wav,gvd2,'--black','linewidth',3);
% % hold on
% % plot(wav,gvd3,':black','linewidth',3);
% % hold on
% % plot(wav,gvd4,'-.black','linewidth',3);
% % hold on
% % plot(wav,gvd5,'*black','linewidth',3);
% set(axes1,'FontName','Times New Roman','FontSize',30,'lineWidth',3);
% box('on');
% xlabel('Wavelength (\mum)');
% ylabel('GVD (ps/nm-km)');
% % legend('TF=0.5','TF=1.0','TF=1.5');
% legend('SF=1.7','SF=1.6','SF=1.5','SF=1.4','SF=1.3');

% fig= figure(2);
% clf(2)
% axes1 = axes('Parent',fig,'LineWidth',3,'FontSize',30,...
%     'FontName','Times New Roman');
% wav=wav*1e6;
% plot(wav,Dgvd1,'-red','linewidth',3);
% hold on
% plot(wav,Dgvd2,'--green','linewidth',3);
% hold on
% plot(wav,Dgvd3,':blue','linewidth',3);
% hold on
% plot(wav,Dgvd4,'-.red','linewidth',3);
% hold on
% plot(wave*1e6,aeff5*1e12,'-*green','linewidth',5,'MarkerSize',15);
% % plot(wav,gvd1,'-black','linewidth',3);
% % hold on
% % plot(wav,gvd2,'--black','linewidth',3);
% % hold on
% % plot(wav,gvd3,':black','linewidth',3);
% % hold on
% % plot(wav,gvd4,'-.black','linewidth',3);
% % hold on
% % plot(wav,gvd5,'*black','linewidth',3);
% set(axes1,'FontName','Times New Roman','FontSize',30,'lineWidth',3);
% box('on');
% xlabel('Wavelength (\mum)');
% ylabel('GVD (ps/nm-km)');
% % legend('TF=0.5','TF=1.0','TF=1.5');
% legend('SF=1.7','SF=1.6','SF=1.5','SF=1.4','SF=1.3');



% fig= figure(4);
% clf(4)
% axes1 = axes('Parent',fig,'LineWidth',3,'FontSize',30,...
%     'FontName','Times New Roman');
% box('on');
% plot(wave*1e6,aeff1*1e12,'-red','linewidth',5);
% hold on
% plot(wave*1e6,aeff2*1e12,'--green','linewidth',5);
% hold on
% plot(wave*1e6,aeff3*1e12,':blue','linewidth',5);
% hold on
% plot(wave*1e6,aeff4*1e12,'-.red','linewidth',5);
% hold on
% plot(wave*1e6,aeff5*1e12,'-*green','linewidth',5,'MarkerSize',15);
% set(axes1,'FontName','Times New Roman','FontSize',30,'lineWidth',3);
% xlabel('Wavelength (\mum)')
% ylabel('Effective area (  \mum^2 )');
% % legend('TF=0.5','TF=1.0','TF=1.5');
% legend('SF=1.7','SF=1.6','SF=1.5','SF=1.4','SF=1.3');


ptot=Ptotal1;
ixy=Ixy_end1;
load corxy_Zoom50
load RefractiveIndexAtzoom50sf17
gamma1=nonlinearity(ixy,wave,ptot,corxy,refractive_index);

ptot=Ptotal2;
ixy=Ixy_end2;
load corxy_Zoom50
load RefractiveIndexAtzoom50sf16
gamma2=nonlinearity(ixy,wave,ptot,corxy,refractive_index);

ptot=Ptotal3;
ixy=Ixy_end3;
load corxy_Zoom50
load RefractiveIndexAtzoom50sf15
gamma3=nonlinearity(ixy,wave,ptot,corxy,refractive_index);

ptot=Ptotal4;
ixy=Ixy_end4;
load corxy_Zoom50
load RefractiveIndexAtzoom50sf14
gamma4=nonlinearity(ixy,wave,ptot,corxy,refractive_index);

ptot=Ptotal5;
ixy=Ixy_end5;
load corxy_Zoom50
load RefractiveIndexAtzoom50sf13
gamma5=nonlinearity(ixy,wave,ptot,corxy,refractive_index);
% 
% fig= figure(5);
% clf(5)
% axes1 = axes('Parent',fig,'LineWidth',3,'FontSize',30,...
%     'FontName','Times New Roman');
% box('on');
% plot(wave*1e6,gamma1,'-red','linewidth',5);
% hold on
% plot(wave*1e6,gamma2,'--green','linewidth',5);
% hold on
% plot(wave*1e6,gamma3,':blue','linewidth',5);
% hold on
% plot(wave*1e6,gamma4,'-.red','linewidth',5);
% hold on
% plot(wave*1e6,gamma5,'-*green','linewidth',5,'MarkerSize',15);
% set(axes1,'FontName','Times New Roman','FontSize',30,'lineWidth',3);
% xlabel('Wavelength (\mum)')
% ylabel('Nonlinearity ( W  ^{-1}m^{-1} )');
% % legend('TF=0.5','TF=1.0','TF=1.5');
% legend('SF=1.7','SF=1.6','SF=1.5','SF=1.4','SF=1.3');



