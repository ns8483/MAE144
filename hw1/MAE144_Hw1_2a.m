%define a, b, f by the poles given
b=RR_poly([-2 2 -5 5],1), a=RR_poly([-1 1 -3 3 -6 6],1)

%(2a) add -20 poles to f to make final answer proper
f=RR_poly([-1 -1 -3 -3 -6 -6],1)

%final answer and test for f with residual which is reasonably small
[x,y] = RR_diophantine(a,b,f), test=trim(a*x+b*y), residual1=norm(f-test)
