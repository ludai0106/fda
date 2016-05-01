load linear.mat
load quadratic.mat
load cubic.mat
load fourth.mat
load fifth.mat

x = 1:1:10

e_10=zeros(11,10)
e_10(1,:)=fun(x)
e_10(2,:)=mean(linear_100)
e_10(3,:)=mean(quadratic_100)
e_10(4,:)=mean(cubic_100)
e_10(5,:)=mean(fourth_100)
e_10(6,:)=mean(fifth_100)
e_10(7,:)=var(linear_100)
e_10(8,:)=var(quadratic_100)
e_10(9,:)=var(cubic_100)
e_10(10,:)=var(fourth_100)
e_10(11,:)=var(fifth_100)
e_10=roundn(e_10, -3)