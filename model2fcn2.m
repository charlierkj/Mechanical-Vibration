function  y = model2fcn2( x )
u=evalin('base','u');
LL=evalin('base','LL');
HH=evalin('base','HH');
l2=evalin('base','l2');
y=(0.05*(1-cos(2*pi*u*x/LL))).*(x>=l2/u&x<=(l2+LL)/u)+0.*(x>(l2+LL)/u);
end

