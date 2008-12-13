%function param = extractParameters3D (X, Y, Z, R)
function param = extractParameters3D (X, Y, Z, R)

    X = X(:);
    Y = Y(:);
    Z = Z(:);

    sol  = [X.^2, Y.^2, X.*Y, X.*Z, Y.*Z, X, Y, Z, ones(length(X),1)] \ Z.^2;

    param.xo = -1/2*(-2*sol(3)*sol(7)-sol(3)*sol(5)*sol(8)+2*sol(2)*sol(8)*sol(4)+4*sol(2)*sol(6)-sol(5)*sol(4)*sol(7)+sol(5)^2*sol(6))/(-sol(3)^2+sol(2)*sol(4)^2+4*sol(2)*sol(1)+sol(1)*sol(5)^2-sol(3)*sol(5)*sol(4));
    param.yo = -1/2*(2*sol(1)*sol(5)*sol(8)+4*sol(1)*sol(7)-sol(8)*sol(4)*sol(3)-2*sol(6)*sol(3)+sol(4)^2*sol(7)-sol(5)*sol(6)*sol(4))/(-sol(3)^2+sol(2)*sol(4)^2+4*sol(2)*sol(1)+sol(1)*sol(5)^2-sol(3)*sol(5)*sol(4));
    param.zo = 1/2*(4*sol(2)*sol(8)*sol(1)-2*sol(2)*sol(6)*sol(4)+sol(5)*sol(6)*sol(3)-sol(8)*sol(3)^2-2*sol(5)*sol(7)*sol(1)+sol(4)*sol(3)*sol(7))/(-sol(3)^2+sol(2)*sol(4)^2+4*sol(2)*sol(1)+sol(1)*sol(5)^2-sol(3)*sol(5)*sol(4));
    
    param.a = 1/2*sqrt(16*sol(2)*sol(3)^2*sol(9)+16*sol(2)*sol(1)*sol(7)^2-64*sol(2)^2*sol(1)*sol(9)+sol(5)^4*sol(6)^2+4*sol(3)^2*sol(9)*sol(5)^2+16*sol(2)^2*sol(6)^2+16*sol(5)*sol(1)*sol(7)*sol(8)*sol(2)+4*sol(4)^2*sol(7)^2*sol(2)-8*sol(3)*sol(4)*sol(7)*sol(8)*sol(2)-8*sol(4)*sol(5)*sol(7)*sol(6)*sol(2)+16*sol(3)*sol(4)*sol(5)*sol(9)*sol(2)-16*sol(3)*sol(7)*sol(6)*sol(2)-16*sol(4)^2*sol(2)^2*sol(9)+4*sol(3)^2*sol(8)^2*sol(2)+4*sol(4)*sol(2)*sol(8)*sol(6)*sol(5)^2+sol(4)^2*sol(7)^2*sol(5)^2-4*sol(4)^2*sol(2)*sol(9)*sol(5)^2+4*sol(5)^3*sol(1)*sol(7)*sol(8)+16*sol(4)*sol(2)^2*sol(8)*sol(6)+8*sol(2)*sol(6)^2*sol(5)^2-16*sol(2)^2*sol(1)*sol(8)^2-4*sol(5)^4*sol(1)*sol(9)-2*sol(3)*sol(4)*sol(7)*sol(8)*sol(5)^2+4*sol(1)*sol(7)^2*sol(5)^2+sol(3)^2*sol(8)^2*sol(5)^2+4*sol(3)*sol(4)*sol(5)^3*sol(9)-4*sol(3)*sol(7)*sol(6)*sol(5)^2-2*sol(3)*sol(5)^3*sol(8)*sol(6)-32*sol(2)*sol(1)*sol(9)*sol(5)^2-2*sol(4)*sol(5)^3*sol(7)*sol(6)-4*sol(2)*sol(1)*sol(8)^2*sol(5)^2-8*sol(3)*sol(5)*sol(8)*sol(6)*sol(2))/((sol(5)^2*sol(1)-sol(3)*sol(4)*sol(5)+sol(4)^2*sol(2)-sol(3)^2+4*sol(1)*sol(2))*R);
    param.c = 1/2*sqrt(-4*sol(4)^2*sol(2)*sol(1)*sol(7)^2+4*sol(2)*sol(3)^2*sol(6)^2+64*sol(2)^2*sol(1)^2*sol(9)-32*sol(2)*sol(1)*sol(3)^2*sol(9)-16*sol(2)^2*sol(1)*sol(6)^2+16*sol(2)^2*sol(1)^2*sol(8)^2+sol(3)^4*sol(8)^2-4*sol(3)^3*sol(6)*sol(7)+4*sol(3)^4*sol(9)+4*sol(1)*sol(3)^2*sol(7)^2+4*sol(5)*sol(3)^2*sol(1)*sol(7)*sol(8)-2*sol(5)*sol(3)^3*sol(8)*sol(6)+8*sol(5)*sol(2)*sol(3)*sol(1)*sol(8)*sol(6)-16*sol(5)*sol(2)*sol(1)^2*sol(7)*sol(8)+sol(5)^2*sol(3)^2*sol(6)^2+16*sol(5)^2*sol(2)*sol(1)^2*sol(9)-4*sol(5)^2*sol(1)*sol(3)^2*sol(9)-4*sol(5)^2*sol(2)*sol(1)*sol(6)^2+16*sol(2)*sol(3)*sol(1)*sol(7)*sol(6)-8*sol(2)*sol(3)^2*sol(1)*sol(8)^2-16*sol(2)*sol(1)^2*sol(7)^2+4*sol(4)*sol(5)*sol(3)^3*sol(9)-2*sol(4)*sol(3)^3*sol(7)*sol(8)+16*sol(4)^2*sol(2)^2*sol(1)*sol(9)+8*sol(4)*sol(2)*sol(1)*sol(7)*sol(8)*sol(3)+4*sol(4)*sol(2)*sol(3)^2*sol(8)*sol(6)-16*sol(4)*sol(1)*sol(8)*sol(6)*sol(2)^2-16*sol(4)*sol(5)*sol(2)*sol(3)*sol(1)*sol(9)-2*sol(4)*sol(5)*sol(3)^2*sol(7)*sol(6)+8*sol(4)*sol(5)*sol(2)*sol(1)*sol(7)*sol(6)+sol(4)^2*sol(3)^2*sol(7)^2-4*sol(4)^2*sol(2)*sol(3)^2*sol(9))/((sol(5)^2*sol(1)-sol(3)*sol(4)*sol(5)+sol(4)^2*sol(2)-sol(3)^2+4*sol(1)*sol(2))*R);
    param.b = 1/2*sqrt(-8*sol(3)*sol(5)*sol(8)*sol(6)*sol(1)+16*sol(4)*sol(2)*sol(8)*sol(6)*sol(1)-8*sol(4)*sol(5)*sol(7)*sol(6)*sol(1)-8*sol(3)*sol(4)*sol(7)*sol(8)*sol(1)+16*sol(3)*sol(4)*sol(5)*sol(9)*sol(1)+4*sol(5)*sol(1)*sol(7)*sol(8)*sol(4)^2-2*sol(3)*sol(5)*sol(8)*sol(6)*sol(4)^2-64*sol(2)*sol(1)^2*sol(9)+4*sol(3)^2*sol(9)*sol(4)^2+sol(3)^2*sol(8)^2*sol(4)^2+4*sol(5)^2*sol(6)^2*sol(1)+16*sol(2)*sol(6)^2*sol(1)+16*sol(3)^2*sol(9)*sol(1)+4*sol(3)^2*sol(8)^2*sol(1)-4*sol(4)^4*sol(2)*sol(9)-16*sol(5)^2*sol(1)^2*sol(9)+sol(5)^2*sol(6)^2*sol(4)^2+4*sol(2)*sol(6)^2*sol(4)^2-16*sol(2)*sol(1)^2*sol(8)^2+8*sol(1)*sol(7)^2*sol(4)^2+16*sol(1)^2*sol(7)^2+sol(4)^4*sol(7)^2-4*sol(3)*sol(7)*sol(6)*sol(4)^2+4*sol(3)*sol(4)^3*sol(5)*sol(9)-2*sol(3)*sol(4)^3*sol(7)*sol(8)-16*sol(3)*sol(7)*sol(6)*sol(1)-4*sol(5)^2*sol(1)*sol(9)*sol(4)^2+4*sol(4)^3*sol(2)*sol(8)*sol(6)+16*sol(5)*sol(1)^2*sol(7)*sol(8)-4*sol(2)*sol(1)*sol(8)^2*sol(4)^2-2*sol(4)^3*sol(5)*sol(7)*sol(6)-32*sol(2)*sol(1)*sol(9)*sol(4)^2)/((sol(5)^2*sol(1)-sol(3)*sol(4)*sol(5)+sol(4)^2*sol(2)-sol(3)^2+4*sol(1)*sol(2))*R);

    param.phi = rad2deg(atan2(-sqrt(16*sol(2)*sol(3)^2*sol(9)+16*sol(2)*sol(1)*sol(7)^2-64*sol(2)^2*sol(1)*sol(9)+sol(5)^4*sol(6)^2+4*sol(3)^2*sol(9)*sol(5)^2+16*sol(2)^2*sol(6)^2+16*sol(5)*sol(1)*sol(7)*sol(8)*sol(2)+4*sol(4)^2*sol(7)^2*sol(2)-8*sol(3)*sol(4)*sol(7)*sol(8)*sol(2)-8*sol(4)*sol(5)*sol(7)*sol(6)*sol(2)+16*sol(3)*sol(4)*sol(5)*sol(9)*sol(2)-16*sol(3)*sol(7)*sol(6)*sol(2)-16*sol(4)^2*sol(2)^2*sol(9)+4*sol(3)^2*sol(8)^2*sol(2)+4*sol(4)*sol(2)*sol(8)*sol(6)*sol(5)^2+sol(4)^2*sol(7)^2*sol(5)^2-4*sol(4)^2*sol(2)*sol(9)*sol(5)^2+4*sol(5)^3*sol(1)*sol(7)*sol(8)+16*sol(4)*sol(2)^2*sol(8)*sol(6)+8*sol(2)*sol(6)^2*sol(5)^2-16*sol(2)^2*sol(1)*sol(8)^2-4*sol(5)^4*sol(1)*sol(9)-2*sol(3)*sol(4)*sol(7)*sol(8)*sol(5)^2+4*sol(1)*sol(7)^2*sol(5)^2+sol(3)^2*sol(8)^2*sol(5)^2+4*sol(3)*sol(4)*sol(5)^3*sol(9)-4*sol(3)*sol(7)*sol(6)*sol(5)^2-2*sol(3)*sol(5)^3*sol(8)*sol(6)-32*sol(2)*sol(1)*sol(9)*sol(5)^2-2*sol(4)*sol(5)^3*sol(7)*sol(6)-4*sol(2)*sol(1)*sol(8)^2*sol(5)^2-8*sol(3)*sol(5)*sol(8)*sol(6)*sol(2))*(2*sol(3)+sol(5)*sol(4))/((4*sol(2)+sol(5)^2)*sqrt(-8*sol(3)*sol(5)*sol(8)*sol(6)*sol(1)+16*sol(4)*sol(2)*sol(8)*sol(6)*sol(1)-8*sol(4)*sol(5)*sol(7)*sol(6)*sol(1)-8*sol(3)*sol(4)*sol(7)*sol(8)*sol(1)+16*sol(3)*sol(4)*sol(5)*sol(9)*sol(1)+4*sol(5)*sol(1)*sol(7)*sol(8)*sol(4)^2-2*sol(3)*sol(5)*sol(8)*sol(6)*sol(4)^2-64*sol(2)*sol(1)^2*sol(9)+4*sol(3)^2*sol(9)*sol(4)^2+sol(3)^2*sol(8)^2*sol(4)^2+4*sol(5)^2*sol(6)^2*sol(1)+16*sol(2)*sol(6)^2*sol(1)+16*sol(3)^2*sol(9)*sol(1)+4*sol(3)^2*sol(8)^2*sol(1)-4*sol(4)^4*sol(2)*sol(9)-16*sol(5)^2*sol(1)^2*sol(9)+sol(5)^2*sol(6)^2*sol(4)^2+4*sol(2)*sol(6)^2*sol(4)^2-16*sol(2)*sol(1)^2*sol(8)^2+8*sol(1)*sol(7)^2*sol(4)^2+16*sol(1)^2*sol(7)^2+sol(4)^4*sol(7)^2-4*sol(3)*sol(7)*sol(6)*sol(4)^2+4*sol(3)*sol(4)^3*sol(5)*sol(9)-2*sol(3)*sol(4)^3*sol(7)*sol(8)-16*sol(3)*sol(7)*sol(6)*sol(1)-4*sol(5)^2*sol(1)*sol(9)*sol(4)^2+4*sol(4)^3*sol(2)*sol(8)*sol(6)+16*sol(5)*sol(1)^2*sol(7)*sol(8)-4*sol(2)*sol(1)*sol(8)^2*sol(4)^2-2*sol(4)^3*sol(5)*sol(7)*sol(6)-32*sol(2)*sol(1)*sol(9)*sol(4)^2)),2*sqrt(-4*sol(4)^2*sol(2)*sol(1)*sol(7)^2+4*sol(2)*sol(3)^2*sol(6)^2+64*sol(2)^2*sol(1)^2*sol(9)-32*sol(2)*sol(1)*sol(3)^2*sol(9)-16*sol(2)^2*sol(1)*sol(6)^2+16*sol(2)^2*sol(1)^2*sol(8)^2+sol(3)^4*sol(8)^2-4*sol(3)^3*sol(6)*sol(7)+4*sol(3)^4*sol(9)+4*sol(1)*sol(3)^2*sol(7)^2+4*sol(5)*sol(3)^2*sol(1)*sol(7)*sol(8)-2*sol(5)*sol(3)^3*sol(8)*sol(6)+8*sol(5)*sol(2)*sol(3)*sol(1)*sol(8)*sol(6)-16*sol(5)*sol(2)*sol(1)^2*sol(7)*sol(8)+sol(5)^2*sol(3)^2*sol(6)^2+16*sol(5)^2*sol(2)*sol(1)^2*sol(9)-4*sol(5)^2*sol(1)*sol(3)^2*sol(9)-4*sol(5)^2*sol(2)*sol(1)*sol(6)^2+16*sol(2)*sol(3)*sol(1)*sol(7)*sol(6)-8*sol(2)*sol(3)^2*sol(1)*sol(8)^2-16*sol(2)*sol(1)^2*sol(7)^2+4*sol(4)*sol(5)*sol(3)^3*sol(9)-2*sol(4)*sol(3)^3*sol(7)*sol(8)+16*sol(4)^2*sol(2)^2*sol(1)*sol(9)+8*sol(4)*sol(2)*sol(1)*sol(7)*sol(8)*sol(3)+4*sol(4)*sol(2)*sol(3)^2*sol(8)*sol(6)-16*sol(4)*sol(1)*sol(8)*sol(6)*sol(2)^2-16*sol(4)*sol(5)*sol(2)*sol(3)*sol(1)*sol(9)-2*sol(4)*sol(5)*sol(3)^2*sol(7)*sol(6)+8*sol(4)*sol(5)*sol(2)*sol(1)*sol(7)*sol(6)+sol(4)^2*sol(3)^2*sol(7)^2-4*sol(4)^2*sol(2)*sol(3)^2*sol(9))*sqrt(-(-sol(5)^2*sol(1)+sol(3)*sol(4)*sol(5)-4*sol(1)*sol(2)-sol(4)^2*sol(2)+sol(3)^2)/(sol(3)^2*sol(5)^2-4*sol(5)^2*sol(1)*sol(2)+4*sol(3)^2*sol(2)-16*sol(2)^2*sol(1)))/(sqrt(-8*sol(3)*sol(5)*sol(8)*sol(6)*sol(1)+16*sol(4)*sol(2)*sol(8)*sol(6)*sol(1)-8*sol(4)*sol(5)*sol(7)*sol(6)*sol(1)-8*sol(3)*sol(4)*sol(7)*sol(8)*sol(1)+16*sol(3)*sol(4)*sol(5)*sol(9)*sol(1)+4*sol(5)*sol(1)*sol(7)*sol(8)*sol(4)^2-2*sol(3)*sol(5)*sol(8)*sol(6)*sol(4)^2-64*sol(2)*sol(1)^2*sol(9)+4*sol(3)^2*sol(9)*sol(4)^2+sol(3)^2*sol(8)^2*sol(4)^2+4*sol(5)^2*sol(6)^2*sol(1)+16*sol(2)*sol(6)^2*sol(1)+16*sol(3)^2*sol(9)*sol(1)+4*sol(3)^2*sol(8)^2*sol(1)-4*sol(4)^4*sol(2)*sol(9)-16*sol(5)^2*sol(1)^2*sol(9)+sol(5)^2*sol(6)^2*sol(4)^2+4*sol(2)*sol(6)^2*sol(4)^2-16*sol(2)*sol(1)^2*sol(8)^2+8*sol(1)*sol(7)^2*sol(4)^2+16*sol(1)^2*sol(7)^2+sol(4)^4*sol(7)^2-4*sol(3)*sol(7)*sol(6)*sol(4)^2+4*sol(3)*sol(4)^3*sol(5)*sol(9)-2*sol(3)*sol(4)^3*sol(7)*sol(8)-16*sol(3)*sol(7)*sol(6)*sol(1)-4*sol(5)^2*sol(1)*sol(9)*sol(4)^2+4*sol(4)^3*sol(2)*sol(8)*sol(6)+16*sol(5)*sol(1)^2*sol(7)*sol(8)-4*sol(2)*sol(1)*sol(8)^2*sol(4)^2-2*sol(4)^3*sol(5)*sol(7)*sol(6)-32*sol(2)*sol(1)*sol(9)*sol(4)^2))));
    param.row = rad2deg(atan2(sqrt(16*sol(2)*sol(3)^2*sol(9)+16*sol(2)*sol(1)*sol(7)^2-64*sol(2)^2*sol(1)*sol(9)+sol(5)^4*sol(6)^2+4*sol(3)^2*sol(9)*sol(5)^2+16*sol(2)^2*sol(6)^2+16*sol(5)*sol(1)*sol(7)*sol(8)*sol(2)+4*sol(4)^2*sol(7)^2*sol(2)-8*sol(3)*sol(4)*sol(7)*sol(8)*sol(2)-8*sol(4)*sol(5)*sol(7)*sol(6)*sol(2)+16*sol(3)*sol(4)*sol(5)*sol(9)*sol(2)-16*sol(3)*sol(7)*sol(6)*sol(2)-16*sol(4)^2*sol(2)^2*sol(9)+4*sol(3)^2*sol(8)^2*sol(2)+4*sol(4)*sol(2)*sol(8)*sol(6)*sol(5)^2+sol(4)^2*sol(7)^2*sol(5)^2-4*sol(4)^2*sol(2)*sol(9)*sol(5)^2+4*sol(5)^3*sol(1)*sol(7)*sol(8)+16*sol(4)*sol(2)^2*sol(8)*sol(6)+8*sol(2)*sol(6)^2*sol(5)^2-16*sol(2)^2*sol(1)*sol(8)^2-4*sol(5)^4*sol(1)*sol(9)-2*sol(3)*sol(4)*sol(7)*sol(8)*sol(5)^2+4*sol(1)*sol(7)^2*sol(5)^2+sol(3)^2*sol(8)^2*sol(5)^2+4*sol(3)*sol(4)*sol(5)^3*sol(9)-4*sol(3)*sol(7)*sol(6)*sol(5)^2-2*sol(3)*sol(5)^3*sol(8)*sol(6)-32*sol(2)*sol(1)*sol(9)*sol(5)^2-2*sol(4)*sol(5)^3*sol(7)*sol(6)-4*sol(2)*sol(1)*sol(8)^2*sol(5)^2-8*sol(3)*sol(5)*sol(8)*sol(6)*sol(2))*(-sol(5)*sol(3)+2*sol(4)*sol(2))/((4*sol(2)+sol(5)^2)*sqrt(-4*sol(4)^2*sol(2)*sol(1)*sol(7)^2+4*sol(2)*sol(3)^2*sol(6)^2+64*sol(2)^2*sol(1)^2*sol(9)-32*sol(2)*sol(1)*sol(3)^2*sol(9)-16*sol(2)^2*sol(1)*sol(6)^2+16*sol(2)^2*sol(1)^2*sol(8)^2+sol(3)^4*sol(8)^2-4*sol(3)^3*sol(6)*sol(7)+4*sol(3)^4*sol(9)+4*sol(1)*sol(3)^2*sol(7)^2+4*sol(5)*sol(3)^2*sol(1)*sol(7)*sol(8)-2*sol(5)*sol(3)^3*sol(8)*sol(6)+8*sol(5)*sol(2)*sol(3)*sol(1)*sol(8)*sol(6)-16*sol(5)*sol(2)*sol(1)^2*sol(7)*sol(8)+sol(5)^2*sol(3)^2*sol(6)^2+16*sol(5)^2*sol(2)*sol(1)^2*sol(9)-4*sol(5)^2*sol(1)*sol(3)^2*sol(9)-4*sol(5)^2*sol(2)*sol(1)*sol(6)^2+16*sol(2)*sol(3)*sol(1)*sol(7)*sol(6)-8*sol(2)*sol(3)^2*sol(1)*sol(8)^2-16*sol(2)*sol(1)^2*sol(7)^2+4*sol(4)*sol(5)*sol(3)^3*sol(9)-2*sol(4)*sol(3)^3*sol(7)*sol(8)+16*sol(4)^2*sol(2)^2*sol(1)*sol(9)+8*sol(4)*sol(2)*sol(1)*sol(7)*sol(8)*sol(3)+4*sol(4)*sol(2)*sol(3)^2*sol(8)*sol(6)-16*sol(4)*sol(1)*sol(8)*sol(6)*sol(2)^2-16*sol(4)*sol(5)*sol(2)*sol(3)*sol(1)*sol(9)-2*sol(4)*sol(5)*sol(3)^2*sol(7)*sol(6)+8*sol(4)*sol(5)*sol(2)*sol(1)*sol(7)*sol(6)+sol(4)^2*sol(3)^2*sol(7)^2-4*sol(4)^2*sol(2)*sol(3)^2*sol(9))*sqrt(-(sol(5)^4*sol(1)-sol(3)*sol(5)^3*sol(4)+sol(5)^2*sol(4)^2*sol(2)-2*sol(3)^2*sol(5)^2+8*sol(5)^2*sol(1)*sol(2)-4*sol(3)^2*sol(2)+16*sol(2)^2*sol(1))/(sol(3)^2*sol(5)^2-4*sol(5)^2*sol(1)*sol(2)+4*sol(3)^2*sol(2)-16*sol(2)^2*sol(1)))),sqrt(-(4*sol(3)^2*sol(2)-8*sol(5)^2*sol(1)*sol(2)+4*sol(3)*sol(5)*sol(4)*sol(2)-4*sol(4)^2*sol(2)^2+sol(3)*sol(5)^3*sol(4)-16*sol(2)^2*sol(1)+sol(3)^2*sol(5)^2-sol(5)^4*sol(1)-sol(5)^2*sol(4)^2*sol(2))/(sol(5)^4*sol(1)-sol(3)*sol(5)^3*sol(4)+sol(5)^2*sol(4)^2*sol(2)-2*sol(3)^2*sol(5)^2+8*sol(5)^2*sol(1)*sol(2)-4*sol(3)^2*sol(2)+16*sol(2)^2*sol(1)))));
    param.lambda = rad2deg(atan2( sqrt(-(-sol(5)^2*sol(1)+sol(3)*sol(4)*sol(5)-4*sol(1)*sol(2)-sol(4)^2*sol(2)+sol(3)^2)/(sol(3)^2*sol(5)^2-4*sol(5)^2*sol(1)*sol(2)+4*sol(3)^2*sol(2)-16*sol(2)^2*sol(1)))*sol(5), sqrt(-(sol(5)^4*sol(1)-sol(3)*sol(5)^3*sol(4)+sol(5)^2*sol(4)^2*sol(2)-2*sol(3)^2*sol(5)^2+8*sol(5)^2*sol(1)*sol(2)-4*sol(3)^2*sol(2)+16*sol(2)^2*sol(1))/(sol(3)^2*sol(5)^2-4*sol(5)^2*sol(1)*sol(2)+4*sol(3)^2*sol(2)-16*sol(2)^2*sol(1)))));
    
    param.R = R;
    