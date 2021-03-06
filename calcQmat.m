function Q = calcQmat(dazVar,dvxVar,dvyVar,psi)
%CALCQMAT
%    Q = CALCQMAT(DAZVAR,DVXVAR,DVYVAR,PSI)

%    This function was generated by the Symbolic Math Toolbox version 6.0.
%    19-Sep-2017 19:37:56

t2 = sin(psi);
t3 = cos(psi);
t4 = dvxVar.*t2.*t3;
t5 = t4-dvyVar.*t2.*t3;
t6 = t2.^2;
t7 = t3.^2;
Q = reshape([dvxVar.*t7+dvyVar.*t6,t5,0.0,t5,dvxVar.*t6+dvyVar.*t7,0.0,0.0,0.0,dazVar],[3, 3]);
