
function gamma=nonlinearity2(ixy,wave,ptot,cor,refractive_index)
num=100;
% load refractive_index_zoom50
index_nan_n=isnan(refractive_index);
refractive_index(index_nan_n)=0; 
index_mat=find(refractive_index>2);
refractive_index(index_mat)=1.2e-17;
index_air=find(refractive_index==1);
refractive_index(index_air)=10.47e-23;
%%%nan remove
% index_nan=isnan(Ixy(1,:));
% pump=1;
for index=1:length(wave)
% for index=1:1
%taking care of nan for power
index_nan=isnan(ixy(index,:));
ixy(index,index_nan)=0; 

% % normalization of with respect to total power
% ixy(index,:)=ixy(index,:)./ptot(index);
% 
% 
% inv_aeff_r(index)=doubleint(cor(1,:),cor(2,:),ixy(index,:).*ixy(index,:),n);
% aeff_r(index)=1./inv_aeff_r(index);
term1=doubleint(cor(1,:),cor(2,:),ixy(index,:).^2.*refractive_index,num);
term2=(doubleint(cor(1,:),cor(2,:),ixy(index,:),num)).^2;
gamma(index)=2*pi/wave(index).*(term1./term2);
% gamma(index)=(2*pi/wave(index)/1)*(doubleint(cor(1,:),cor(2,:),ixy(index,:).*ixy(index,:).*n,num));
end
gamma=gamma;
end
