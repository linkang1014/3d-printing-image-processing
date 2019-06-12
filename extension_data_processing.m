clear all; close all;
%%
%CACULATION
for k =2200:20:12740
k_1 = floor(k/10000);
k_2 = floor((k-k_1*10000)/1000);
k_3 = num2str(k-k_1*10000-k_2*1000,'%03d');
discription1 = sprintf('0_100_SI303920180117141814_0%d%d_%s_00.mpm_eval_onoffaxis.tif',k_1,k_2,k_3);
[X,map] = imread(discription1);
if ~isempty(map)
    I = ind2rgb(X,map);
end
black = zeros(528,13);
grey = zeros(528,13);
yellow = zeros(528,13);
    for i = 1:500
        for j = 1:500
            if ((j-39)/44-i/500)<0
                if I(i,j,1)<=0.2 && I(i,j,2)<=0.2 && I(i,j,3)<=0.2
                    black(k/20-109,1) = black(k/20-109,1)+1;
                elseif I(i,j,1)>=0.8 && I(i,j,2)>=0.8 && I(i,j,3)>=0.8
                    grey(k/20-109,1) = grey(k/20-109,1)+1;
                else
                    yellow(k/20-109,1) = yellow(k/20-109,1)+1;
                end
            elseif ((j-70)/44-i/500)<0&&((j-40)/44-i/500)>=0
                if I(i,j,1)<=0.2 && I(i,j,2)<=0.2 && I(i,j,3)<=0.2
                    black(k/20-109,2) = black(k/20-109,2)+1;
                elseif I(i,j,1)>=0.8 && I(i,j,2)>=0.8 && I(i,j,3)>=0.8
                    grey(k/20-109,2) = grey(k/20-109,2)+1;
                else
                    yellow(k/20-109,2) = yellow(k/20-109,2)+1;
                end
            elseif ((j-102)/44-i/500)<0&&((j-70)/44-i/500)>=0
                if I(i,j,1)<=0.2 && I(i,j,2)<=0.2 && I(i,j,3)<=0.2
                    black(k/20-109,3) = black(k/20-109,3)+1;
                elseif I(i,j,1)>=0.8 && I(i,j,2)>=0.8 && I(i,j,3)>=0.8
                    grey(k/20-109,3) = grey(k/20-109,3)+1;
                else
                    yellow(k/20-109,3) = yellow(k/20-109,3)+1;
                end           
            elseif ((j-139)/44-i/500)<0&&((j-102)/44-i/500)>=0
                if I(i,j,1)<=0.2 && I(i,j,2)<=0.2 && I(i,j,3)<=0.2
                    black(k/20-109,4) = black(k/20-109,4)+1;
                elseif I(i,j,1)>=0.8 && I(i,j,2)>=0.8 && I(i,j,3)>=0.8
                    grey(k/20-109,4) = grey(k/20-109,4)+1;
                else
                    yellow(k/20-109,4) = yellow(k/20-109,4)+1;
                end            
            elseif ((j-168)/44-i/500)<0&&((j-139)/44-i/500)>=0
                if I(i,j,1)<=0.2 && I(i,j,2)<=0.2 && I(i,j,3)<=0.2
                    black(k/20-109,5) = black(k/20-109,5)+1;
                elseif I(i,j,1)>=0.8 && I(i,j,2)>=0.8 && I(i,j,3)>=0.8
                    grey(k/20-109,5) = grey(k/20-109,5)+1;
                else
                    yellow(k/20-109,5) = yellow(k/20-109,5)+1;
                end
            elseif ((j-200)/44-i/500)<0&&((j-168)/44-i/500)>=0
                if I(i,j,1)<=0.2 && I(i,j,2)<=0.2 && I(i,j,3)<=0.2
                    black(k/20-109,6) = black(k/20-109,6)+1;
                elseif I(i,j,1)>=0.8 && I(i,j,2)>=0.8 && I(i,j,3)>=0.8
                    grey(k/20-109,6) = grey(k/20-109,6)+1;
                else
                    yellow(k/20-109,6) = yellow(k/20-109,6)+1;
                end            
            elseif ((j-234)/44-i/500)<0&&((j-200)/44-i/500)>=0
                if I(i,j,1)<=0.2 && I(i,j,2)<=0.2 && I(i,j,3)<=0.2
                    black(k/20-109,7) = black(k/20-109,7)+1;
                elseif I(i,j,1)>=0.8 && I(i,j,2)>=0.8 && I(i,j,3)>=0.8
                    grey(k/20-109,7) = grey(k/20-109,7)+1;
                else
                    yellow(k/20-109,7) = yellow(k/20-109,7)+1;
                end
            elseif ((j-264)/44-i/500)<0&&((j-234)/44-i/500)>=0
                if I(i,j,1)<=0.2 && I(i,j,2)<=0.2 && I(i,j,3)<=0.2
                    black(k/20-109,8) = black(k/20-109,8)+1;
                elseif I(i,j,1)>=0.8 && I(i,j,2)>=0.8 && I(i,j,3)>=0.8
                    grey(k/20-109,8) = grey(k/20-109,8)+1;
                else
                    yellow(k/20-109,8) = yellow(k/20-109,8)+1;
                end
            elseif ((j-296)/44-i/500)<0&&((j-264)/44-i/500)>=0
                if I(i,j,1)<=0.2 && I(i,j,2)<=0.2 && I(i,j,3)<=0.2
                    black(k/20-109,9) = black(k/20-109,9)+1;
                elseif I(i,j,1)>=0.8 && I(i,j,2)>=0.8 && I(i,j,3)>=0.8
                    grey(k/20-109,9) = grey(k/20-109,9)+1;
                else
                    yellow(k/20-109,9) = yellow(k/20-109,9)+1;
                end
            elseif ((j-332)/44-i/500)<0&&((j-296)/44-i/500)>=0
                if I(i,j,1)<=0.2 && I(i,j,2)<=0.2 && I(i,j,3)<=0.2
                    black(k/20-109,10) = black(k/20-109,10)+1;
                elseif I(i,j,1)>=0.8 && I(i,j,2)>=0.8 && I(i,j,3)>=0.8
                    grey(k/20-109,10) = grey(k/20-109,10)+1;
                else
                    yellow(k/20-109,10) = yellow(k/20-109,10)+1;
                end
            elseif ((j-370)/44-i/500)<0&&((j-332)/44-i/500)>=0
                if I(i,j,1)<=0.2 && I(i,j,2)<=0.2 && I(i,j,3)<=0.2
                    black(k/20-109,11) = black(k/20-109,11)+1;
                elseif I(i,j,1)>=0.8 && I(i,j,2)>=0.8 && I(i,j,3)>=0.8
                    grey(k/20-109,11) = grey(k/20-109,11)+1;
                else
                    yellow(k/20-109,11) = yellow(k/20-109,11)+1;
                end
            elseif ((j-410)/44-i/500)<0&&((j-370)/44-i/500)>=0
                if I(i,j,1)<=0.2 && I(i,j,2)<=0.2 && I(i,j,3)<=0.2
                    black(k/20-109,12) = black(k/20-109,12)+1;
                elseif I(i,j,1)>=0.8 && I(i,j,2)>=0.8 && I(i,j,3)>=0.8
                    grey(k/20-109,12) = grey(k/20-109,12)+1;
                else
                    yellow(k/20-109,12) = yellow(k/20-109,12)+1;
                end
            elseif ((j-410)/44-i/500)>=0
                if I(i,j,1)<=0.2 && I(i,j,2)<=0.2 && I(i,j,3)<=0.2
                    black(k/20-109,13) = black(k/20-109,13)+1;
                elseif I(i,j,1)>=0.8 && I(i,j,2)>=0.8 && I(i,j,3)>=0.8
                    grey(k/20-109,13) = grey(k/20-109,13)+1;
                else
                    yellow(k/20-109,13) = yellow(k/20-109,13)+1;
                end
            end        
        end
    end
%%
%OUPUT OF EACH LAYER
x = 1:13;
for n = 1:13
proportion_0_100(k/20-109,n) = black(k/20-109,n)/(black(k/20-109,n)+yellow(k/20-109,n));
end
plot(x,proportion_0_100(k/20-109,:),'r.','markersize',30);
hold on;
grid on;
set(gca,'xtick',x);
xlabel(gca,'position of bar','FontSize',16);
ylabel(gca,'proportion of 0-100Hz','FontSize',16);
set(gca,'FontSize',14)
discription2 = sprintf('Proportion of 0-100Hz in each bar  Layer %dmm',k);
title(discription2,'FontSize',16);
discription3 = sprintf('Layer %dmm.jpg',k);
saveas(gcf,discription3);
close;
end
save('result_0_100.mat','proportion_0_100');


