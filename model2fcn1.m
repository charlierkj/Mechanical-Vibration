function y = model2fcn1(x)
u=evalin('base','u');
LL=evalin('base','LL');
HH=evalin('base','HH');
y=(HH*(1-cos(2*pi*u*x/LL))).*(x>=0&x<=LL/u)+0.*(x>LL/u);
end

