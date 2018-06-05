% input: V, voltage difference
% output 1: E, energy of deuteron
% output 2: N, the number of times the deuteron enters the D's

function [E,n] = cyclotron (V)
    m = 3.344e-27;           % mass of deuteron [kg]             
    q = 1.603e-19;           % charge of deuteron [c]
    B = 1.600;               % magnetic field strength [t]
    z = m*V/(q*B^2);         % initial trajectory radius squared [m^2]
    n = 0;                   % pass number
    d = 2;                   % diameter/radius, sign alternates
    r = sqrt(z);             % initial radius of curvature 
    x = -r/2.0;              % initial x-coordinate

    while x>=-0.5            % while deuteron has not emerged 
        x = x+d*r;           % spiral to next x-coordinate ;
        n = n+1;             % update pass number
        d = -d;              % ... and direction
        r = sqrt(r^2+2*z);   % calculate new radius in case needed
    end
    E = V*n*1e-6;            % determine energy  
end


%% My proposal:

function [E,N] = my_cyclotron(V)
%deuteron mass / kg
m=3.344e-27;
% deuteron charge / C
q=1.603e-19;
%magnetic field strength / T
B=1.600;

%radii
r=zeros(1,1000);

r(1)=sqrt(m*V/(q*B^2));

%initial position
s0=r(1)/2;
p=-s0+2*r(1); % given as s0 in the problem


n=1;
fprintf('N= %d, r= %d, p= %d\n',n,r(1),p)
while p > -0.5
    n=n+1;
    r(n)=sqrt(r(n-1)^2+2*r(1)^2);
    p=p+2*r(n)*(-1)^(n-1);
    fprintf('N= %d, r= %d, p= %d\n',n,r(n),p)
end

N=n;
E=V*n*1e-6;
plot(1:n,r(1:n))
end