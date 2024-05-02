1 x = linspace(0, 10, 50);
 2 y = x.^10 - 1;
 3 x1 = 0;
 4 xu = 1.3;
5 err = 0.01;
6 iter = 1;
7 while abs(xu-x1)>err
 8     xr = (x1+xu)/2;
9 y1=x1.^10-1;
10 yr=xr.^10-1;
11 yu=xu.^10-1;
12 if y1*yr < 0
13 xu = xr;
14 else
15 x1 = xr;
16 end
17 iter=iter+1;
18 end
19 fprintf('root of equation = %f',xr); 20 plot(x,y);