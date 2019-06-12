clear all; close all;
%%
%LOAD
load('result_0_100.mat');
load('result_100_200.mat');
load('result_200_300.mat');
load('result_300_400.mat');
load('result_400_500.mat');
load('result_500_600.mat');
%% OUPUT OF AVERAGE VALUE
proportion_mean_0_100 = mean(proportion_0_100,'omitnan');
proportion_mean_100_200 = mean(proportion_100_200,'omitnan');
proportion_mean_200_300 = mean(proportion_200_300,'omitnan');
proportion_mean_300_400 = mean(proportion_300_400,'omitnan');
proportion_mean_400_500 = mean(proportion_400_500,'omitnan');
proportion_mean_500_600 = mean(proportion_500_600,'omitnan');
for i = 1:13
    proportion_signal_dynamic(i) = 50*proportion_mean_0_100(i)+150*proportion_mean_100_200(i)+250*proportion_mean_200_300(i)+350*proportion_mean_300_400(i)+450*proportion_mean_400_500(i)+550*proportion_mean_500_600(i);
end


