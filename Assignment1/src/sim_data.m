x_tst = 1:1:10
data_y = fun(x_tst)
sim_times = 150
fit = 5

%data for sample size 10
sample_size1 = 10
fifth_10 = zeros(sim_times,10)
for i=1:150
   [dataset,x_sample,y_sample] = sample_data_with_noise(sample_size1)
%perform regression, curve fitting using least square error
%get coefficients
    p = polyfit(x_sample,y_sample,fit)
%test with bigger range   
    fifth_10(i,:) = polyval(p,x_tst);
end


%data for sample size 100
sample_size2 = 100
fifth_100 = zeros(sim_times,10)

for i=1:150
   [dataset,x_sample,y_sample] = sample_data_with_noise(sample_size2)
%perform regression, curve fitting using least square error
%get coefficients
    p = polyfit(x_sample,y_sample,fit)
%test with bigger range   
    fifth_100(i,:) = polyval(p,x_tst);
end

%data for sample size 1000
sample_size3 = 1000
fifth_1000 = zeros(sim_times,10)

for i=1:150
   [dataset,x_sample,y_sample] = sample_data_with_noise(sample_size3)
%perform regression, curve fitting using least square error
%get coefficients
    p = polyfit(x_sample,y_sample,fit)
%test with bigger range   
    fifth_1000(i,:) = polyval(p,x_tst);
end


save /Users/ludai/Desktop/Study/Github/fda/Assignment1/src/fifth fifth_10 fifth_100 fifth_1000




