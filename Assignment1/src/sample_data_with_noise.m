function [dataset,x_sample,y_sample] = sample_data_with_noise(sample_size)
%Generate dataset
    x = 0:0.01:10
%add gaussian noise
    mu = fun(x)
    [m,n]=size(mu)
    sigma = ones(1,n)
    %plot(x,mu)
    %grid on
    dataset = mvnrnd(mu, sigma, 1)
%random sample
    [x_sample,idx] = datasample(x,sample_size,'Replace',false)
    y_sample = dataset(idx);
    scatter(x_sample,y_sample)
end