%population.m函数文件
function g = population(x,t)

%   此处显示详细说明
g = x(1)./(1+(x(1)/3.9-1)*exp(-x(2)*t));  %3.9，初始数据
end
