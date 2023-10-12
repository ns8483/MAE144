function [Dz]=NS_C2D_matched(wbar,semicausal)
    %checking to see if variables exist
    if ~exist('wbar','var')
        wbar = 0
    end
    if ~exist('semicausal','var')
        semicausal = false
    end

    %z and s are symbolic variables
    syms z s

    %parameters of Ds
    z1 = 1
    p1 = 10
    h = 1

    %define Ds
    Ds = (s+z1)/(s*(s+p1))

    %prewarping
    if wbar == 0
        f = 1
    else
        f = 2*(1-cos(wbar*h))/(wbar*h*sin(wbar*h))
    end
    x = (2/(f*h))*((z-1)/(z+1))
    Dz = (x+z1)/(x*(x+p1))
end