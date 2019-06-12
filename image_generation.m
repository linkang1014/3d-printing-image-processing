clear all; close all;
%%
%LOAD
load('result.mat');
%% OUPUT OF AVERAGE VALUE
proportion=proportion(~isnan(proportion));
id = isnan(proportion);
proportion(id) = 0;
proportion_mean = sum(proportion)./sum(~id);

proportion_mean = mean(proportion,'omitnan');
proportion_mean_test = mean(proportion(1:97,1));

plot(x,proportion_mean,'r.','markersize',30);
hold on;
grid on;
set(gca,'xtick',x);
xlabel(gca,'position of bar','FontSize',16);
ylabel(gca,'Average value about proportion of yellow','FontSize',16);
set(gca,'FontSize',14)
discription2 = sprintf('Average value  Layer 2200mm-12740mm');
title(discription2,'FontSize',16);
discription3 = sprintf('Layer 2200mm-12740mm average.jpg');
saveas(gcf,discription3);
%% OUTPUT OF TRAJECTORY
proportion(isnan(proportion)) = 0;
for i=1:13
k = 2200:20:12740;
plot(k,proportion(:,i),'r-','LineWidth',1);
hold on;
grid on;
set(gca,'xtick',x);
xlabel(gca,'Layer','FontSize',16);
ylabel(gca,'Proportion of yellow region','FontSize',16);
set(gca,'FontSize',14)
discription2 = sprintf('Trajectory of yellow region proportion for bar %d  Layer 2200mm-12740mm',i);
title(discription2,'FontSize',16);
discription3 = sprintf('Trajectory of %d.jpg',i);
saveas(gcf,discription3);
hold off;
close;
end

%% OUTPUT OF TRAJECTORY FOR ALL BARS
k = 2200:20:12740;
plot(k,proportion(:,1),'r-','LineWidth',1);
hold on;
plot(k,proportion(:,2),'b-','LineWidth',1);
plot(k,proportion(:,3),'b-','LineWidth',1);
plot(k,proportion(:,4),'r-','LineWidth',1);
plot(k,proportion(:,5),'r-','LineWidth',1);
plot(k,proportion(:,6),'b-','LineWidth',1);
plot(k,proportion(:,7),'b-','LineWidth',1);
plot(k,proportion(:,8),'r-','LineWidth',1);
plot(k,proportion(:,9),'r-','LineWidth',1);
plot(k,proportion(:,10),'b-','LineWidth',1);
plot(k,proportion(:,11),'b-','LineWidth',1);
plot(k,proportion(:,12),'r-','LineWidth',1);
plot(k,proportion(:,13),'b-','LineWidth',1);
grid on;
set(gca,'xtick',x);
xlabel(gca,'Layer','FontSize',16);
ylabel(gca,'Proportion of yellow region','FontSize',16);
set(gca,'FontSize',14)
discription2 = sprintf('Trajectory of yellow region proportion for all bar  Layer 2200mm-12740mm');
title(discription2,'FontSize',16);
discription3 = sprintf('Trajectory for all bars.jpg');
saveas(gcf,discription3);






