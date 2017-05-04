@       ======================================    @
@       GAUSS Program:      Rank test for Cointegration    @
@       ======================================    @
@       Input:         y, x:      T x 1 vectors of time series     @
@       Output:      kap,xi:   Test statistics                          @
@       subprogram:           Rankx returns the ranks          @
@       ======================================    @

proc(2)=rankci(y,x);
  local n,z,dz,xi,sig,kap,t,dx,dy,Rankrho;
  x=rankx(x);
  y=rankx(y);
  n=rows(y);
  dx=x[2:n]-x[1:n-1];  
  dy=y[2:n]-y[1:n-1];
  Rankrho=dx'dy/sqrt(dx'dx*dy'dy);
 
  z=y-x;
  dz=z[2:n]-z[1:n-1];
  sig=dz'dz/n;
     
  kap=maxc(abs(z))/sqrt(sig*n);
  xi=z'z/sig/n^2;
  kap=kap/(1-0.174*Rankrho^2);
  xi=xi/(1-0.462*Rankrho);
 
 retp(kap,xi);
endp;



proc rankx(x);
  local n,z,y;
  n=rows(x);
  x=x~seqa(1,1,n);
  z=sortc(x,1);
  y=seqa(1,1,n)~z[.,2];
  y=sortc(y,2);
  retp(y[.,1]);
endp;
