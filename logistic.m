t = [1790 1800 1810 1820 1830 1840 1850 1860 1870 1880 1890 1900 1910 1920 1930 1940 1950 1960 1970 1980 1990 2000];
p = [3.9 5.3 7.2 9.6 12.9 17.1 23.2 31.4 38.6 50.2 62.9 76.0 92.0 105.7 122.8 131.7 150.7 179.3 203.2 226.5 248.7 281.4];
t = t-1780; %整体减去1790
x0 = [400,0.03]; %待定参数x的初值（其中第一个参数为最大人口数，第二个参数为人口增长率）
x = lsqcurvefit('population',x0,t,p); %使用函数求得最终的（xm，r）
p1 = population(x,t);
plot(t+1780,p,'o',t+1780,p1,'-r*')
title('Logistic模型拟合图')
xlabel('年');
ylabel('人口数');
legend('实际数据','理论数据')
