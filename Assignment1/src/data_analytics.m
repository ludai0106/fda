load linear.mat
load quadratic.mat
load cubic.mat
load fourth.mat
load fifth.mat

x = 0:0.1:10

e_10=zeros(15,1)
e_10(1,1)=mean([fun(x)-mean(linear_10)].^2)
e_10(2,1)=mean([fun(x)-mean(quadratic_10)].^2)
e_10(3,1)=mean([fun(x)-mean(cubic_10)].^2)
e_10(4,1)=mean([fun(x)-mean(fourth_10)].^2)
e_10(5,1)=mean([fun(x)-mean(fifth_10)].^2)
e_10(6,1)=mean(var(linear_10))
e_10(7,1)=mean(var(quadratic_10))
e_10(8,1)=mean(var(cubic_10))
e_10(9,1)=mean(var(fourth_10))
e_10(10,1)=mean(var(fifth_10))
e_10(11,1)=e_10(1,1)+e_10(6,1)
e_10(12,1)=e_10(2,1)+e_10(7,1)
e_10(13,1)=e_10(3,1)+e_10(8,1)
e_10(14,1)=e_10(4,1)+e_10(9,1)
e_10(15,1)=e_10(5,1)+e_10(10,1)
e_10=roundn(e_10, -3)