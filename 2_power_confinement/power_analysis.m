clear all, clc
wave=1.2:.1:2.8;

load sus17zoom50airPowerfraction
conf1=pcore./ptotal;
PfracAirByCore1=pair./pcore;
load sus16zoom50airPowerfraction
conf2=pcore./ptotal;
PfracAirByCore2=pair./pcore;
load sus15zoom50airPowerfraction
conf3=pcore./ptotal;
PfracAirByCore3=pair./pcore;
load sus14zoom50airPowerfraction
conf4=pcore./ptotal;
PfracAirByCore4=pair./pcore;
load sus13zoom50airPowerfraction
conf5=pcore./ptotal;
PfracAirByCore5=pair./pcore;



fig= figure(5);
clf(5)
axes1 = axes('Parent',fig,'LineWidth',5,'FontSize',30,...
    'FontName','Times New Roman');
box('on');
plot(wave,conf1*100,'-red','linewidth',5);
hold on
% plot(wave,conf2*100,'--green','linewidth',5);
% hold on
plot(wave,conf3*100,':blue','linewidth',5);
hold on
% plot(wave,conf4*100,'-.black','linewidth',5);
% hold on
plot(wave,conf5*100,'-*red','linewidth',5,'MarkerSize',15);
set(axes1,'FontName','Times New Roman','FontSize',30,'lineWidth',3);
xlabel('Wavelength (\mum)')
ylabel('Confinement (%)');
legend('TF=0.5','TF=1.0','TF=1.5');
legend('SF=1.7','SF=1.6','SF=1.5','SF=1.4','SF=1.3');
legend('SF=1.6','SF=1.5','SF=1.4','SF=1.3');
% 
% fig= figure(5);
% clf(5)
% axes1 = axes('Parent',fig,'LineWidth',5,'FontSize',30,...
%     'FontName','Times New Roman');
% box('on');
% plot(wave,conf1*100,'-red','linewidth',5);
% hold on
% plot(wave,conf2*100,'--green','linewidth',5);
% hold on
% plot(wave,conf3*100,':blue','linewidth',5);
% hold on
% plot(wave,conf4*100,'-.black','linewidth',5);
% hold on
% plot(wave,conf5*100,'-*red','linewidth',5,'MarkerSize',15);
% set(axes1,'FontName','Times New Roman','FontSize',30,'lineWidth',3);
% xlabel('Wavelength (\mum)')
% ylabel('Confinement (%)');
% % legend('TF=0.5','TF=1.0','TF=1.5');
% % legend('SF=1.7','SF=1.6','SF=1.5','SF=1.4','SF=1.3');
% legend('SF=1.7','SF=1.6','SF=1.5','SF=1.4','SF=1.3');


% fig= figure(6);
% clf(6)
% axes1 = axes('Parent',fig,'LineWidth',5,'FontSize',30,...
%     'FontName','Times New Roman');
% box('on');
% plot(wave,PfracAirByCore1*100,'-red','linewidth',5);
% hold on
% plot(wave,PfracAirByCore2*100,'--green','linewidth',5);
% hold on
% plot(wave,PfracAirByCore3*100,':blue','linewidth',5);
% hold on
% plot(wave,PfracAirByCore4*100,'-.black','linewidth',5);
% hold on
% plot(wave,PfracAirByCore5*100,'-*red','linewidth',5,'MarkerSize',15);
% set(axes1,'FontName','Times New Roman','FontSize',30,'lineWidth',3);
% xlabel('Wavelength (\mum)')
% ylabel('P_{air}/P_{core} (%)');
% legend('TF=0.5','TF=1.0','TF=1.5');
% legend('SF=1.7','SF=1.6','SF=1.5','SF=1.4','SF=1.3');
% legend('SF=1.6','SF=1.5','SF=1.4','SF=1.3');
% legend('SF=1.7','SF=1.3');

