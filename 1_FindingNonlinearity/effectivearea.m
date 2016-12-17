
function aeff=effectivearea(ixy,wave,ptot,cor)
n=100;
%%%nan remove
% index_nan=isnan(Ixy(1,:));
% pump=1;
for index=1:length(wave)
%taking care of nan for power
index_nan=isnan(ixy(index,:));
ixy(index,index_nan)=0; 

% normalization of with respect to total power
ixy(index,:)=ixy(index,:)./ptot(index);


inv_aeff_r(index)=doubleint(cor(1,:),cor(2,:),ixy(index,:).*ixy(index,:),n);
aeff_r(index)=1./inv_aeff_r(index);

end
aeff=aeff_r;
end

