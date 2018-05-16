function pretty_picture(N)

%Pretty picture plot a growing cosine wave versus a growing sine.
%N

t=0:(.99*pi/2):N;
x=t.*cos(t);
y=t.*sin(t);
plot(x,y,'k')
axis square