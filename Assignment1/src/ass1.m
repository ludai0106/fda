figure
hold all
mark={[1,0.4,0.6],[0.8,0.2,0.8],[0.5,0.8,1],[0.5,0.3,0.9],[0.2,0.8,0.2]};
sample_size = 10
x_tst = 1:0.1:30;
h=zeros(1,6)
for fit = 1:5
    for i=1:150
       [dataset,x_sample,y_sample] = sample_data_with_noise(sample_size)
%perform regression, curve fitting using least square error
%get coefficients
        p = polyfit(x_sample,y_sample,fit)
%test with bigger range   
        y_tst = polyval(p,x_tst);
        %plot(x_sample,y_sample,'o',x_tst,y_tst)
        h(fit) = plot(x_tst,y_tst,'Color',mark{fit})
    end
end
h(6)=plot(x_tst,fun(x_tst),'-k','LineWidth',2)  
plot([10 10],[-150 600],'--')
axis([0 32 -150 600])
mark={'-b','-c','-m','-r','-g'};
legend(h(1:6),{'linear','quadratic','cubic','4-th','5-th','f(x)'},'Position',[0.15,0.80,0.20,0.1])
xlabel('x')
ylabel('0.6*x.^2+0.3*x+x.*cos(x)')
str=sprintf('Sample size %d', sample_size);
title(str)
hold off


