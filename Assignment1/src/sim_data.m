x_tst = 0:0.1:10
data_y = fun(x_tst)
sim_times = 150
fit = 1

%data for sample size 10
sample_size1 = 10
linear_10 = zeros(sim_times,101)
for i=1:150
   [dataset,x_sample,y_sample] = sample_data_with_noise(sample_size1)
%perform regression, curve fitting using least square error
%get coefficients
    p = polyfit(x_sample,y_sample,fit)
%test with bigger range   
    linear_10(i,:) = polyval(p,x_tst);
end


%data for sample size 100
sample_size2 = 100
linear_100 = zeros(sim_times,101)

for i=1:150
   [dataset,x_sample,y_sample] = sample_data_with_noise(sample_size2)
%perform regression, curve fitting using least square error
%get coefficients
    p = polyfit(x_sample,y_sample,fit)
%test with bigger range   
   linear_100(i,:) = polyval(p,x_tst);
end

%data for sample size 1000
sample_size3 = 1000
linear_1000 = zeros(sim_times,101)

for i=1:150
   [dataset,x_sample,y_sample] = sample_data_with_noise(sample_size3)
%perform regression, curve fitting using least square error
%get coefficients
    p = polyfit(x_sample,y_sample,fit)
%test with bigger range   
    linear_1000(i,:) = polyval(p,x_tst);
end


save /Users/ludai/Desktop/Study/Github/fda/Assignment1/src/linear linear_10 linear_100 linear_1000




