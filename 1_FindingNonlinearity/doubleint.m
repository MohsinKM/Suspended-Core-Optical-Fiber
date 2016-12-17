
function val= doubleint(x,y,data,n)



a=sortrows ( [ x',y',data' ] , [ 1,2,3 ] );

%%% let size ( x ) = n * n 
x1 = reshape ( a ( : , 1 ) , [ n , n ] ) ;
y1 = reshape ( a ( : , 2 ) , [ n , n ] ) ;
z1 = reshape ( a ( : , 3 ) , [ n , n ] ) ;
val=trapz ( trapz ( z1 ) ) *  ( x1 ( 1 , 2 ) - x1 ( 1 , 1 ) )  * ( y1 ( 2 , 1 ) - y1 ( 1 , 1 ) ) ;
