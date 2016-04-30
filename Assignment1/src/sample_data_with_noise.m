function [dataset,x_sample,y_sample] = sample_data_with_noise(sample_size)
%Generate dataset
    x = 0:1:10
    mu = fun(x)
    [m,n]=size(mu)
    sigma = ones(1,n)/1000
    num = 1
    %plot(x,mu)
    %grid on
    dataset = mvnrnd(mu, sigma, num)
    %random sample
    index = sort(randsample(n,sample_size))
    s_i = size(index)
    x_sample = zeros(s_i(1,1),1)
    y_sample = zeros(s_i(1,1),1)
    for i=1:s_i(1,1)
        x_sample(i,1) = x(1,index(i,1))
        y_sample(i,1) = dataset(1,index(i,1))
    end
    %scatter(x_sample,y_sample)
end