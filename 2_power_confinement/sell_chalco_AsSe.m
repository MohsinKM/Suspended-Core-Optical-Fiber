
function n=sell_chalco_AsSe(wave)
A0 = 2.234921; A1 = 0.24164; A2 = 0.347441; A3 = 1.308575;

%%wave in um
term1=A0^2/(wave^2-A1^2);
term2=A2^2/(wave^2-19^2);
term3=A3^2/(wave^2-4*A1^2);
n_square=1+wave^2*(term1+term2+term3);


n=sqrt(n_square);
