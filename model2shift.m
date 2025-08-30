% 数据定义
data1 = [20 25 27 16 16 24;
         20 21 32 15 16 24;
         20 19 33 16 16 24;
         20 21 31 16 16 24;
         20 22 30 16 16 24];

data2 = [0.15625 0.347222222 0.375 0.222222222 0.285714286 0.6;
         0.15625 0.291666667 0.444444444 0.208333333 0.285714286 0.6;
         0.15625 0.263888889 0.458333333 0.222222222 0.285714286 0.6;
         0.15625 0.291666667 0.430555556 0.222222222 0.285714286 0.6;
         0.15625 0.305555556 0.416666667 0.222222222 0.285714286 0.6];

data4 = [3 7 13 1 7 11 8;
         7 5 13 3 7 8 7;
         4 5 15 0 6 14 6;
         6 10 10 2 7 10 5;
         8 6 13 2 7 11 3];

data41 = [1	1	0	0	5	3	6;
    2	1	4	1	5	1	2;
    4	1	1	0	4	2	4;
    1	2	2	1	0	5	5;
    1	0	3	1	2	7	2];%halfday

data42 = [2	6	13	1	2	8	2;
    5	4	9	2	2	7	5;
    0	4	14	0	2	12	2;
    5	8	8	1	7	5	0;
    7	6	10	1	5	4	1];%fullday

labels6 = {'Shift 1','Shift 2','Shift 3','Shift 4','Shift 5','Shift 6'};
labels7 = {'Shift 1','Shift 2','Shift 3','Shift 4','Shift 5','Shift 6','Virtual shift'};
eta = [685, 690, 695, 700, 705];

% 图中（字体，9号，网格线透明度0.55）

% 区分五组的线型和标记
linetypes = {'-o','-s','-d','-^','-p'};
linecolors = lines(5);

% 第一份结果
figure('Position', [100 100 500 500]);
ax1 = polaraxes('Position',[0.13 0.13 0.75 0.75]);
hold(ax1, 'on');
for i = 1:5
    DisplayName = ['$\hat{\eta}=', num2str(eta(i)), '$'];
    h = polarplot(ax1, ...
        linspace(0, 2*pi, 7), ...
        [data1(i,:) data1(i,1)], ...
        linetypes{i}, ...
        'LineWidth',2, ...
        'Color',linecolors(i,:), ...
        'MarkerFaceColor',linecolors(i,:), ...
        'MarkerSize',4.5, ...
        'DisplayName', DisplayName);
end
ax1.ThetaTick = linspace(0,360,7);
ax1.ThetaTickLabel = [labels6 labels6(1)];
legend(ax1, 'show', 'Location','bestoutside', 'Interpreter','latex');
hold(ax1, 'off');

% 第二份结果
figure('Position', [650 100 500 500]);
ax2 = polaraxes('Position',[0.13 0.13 0.75 0.75]);
hold(ax2, 'on');
for i = 1:5
    DisplayName = ['$\hat{\eta}=', num2str(eta(i)), '$'];
    h = polarplot(ax2, ...
        linspace(0, 2*pi, 7), ...
        [data2(i,:) data2(i,1)], ...
        linetypes{i}, ...
        'LineWidth',2, ...
        'Color',linecolors(i,:), ...
        'MarkerFaceColor',linecolors(i,:), ...
        'MarkerSize',4.5, ...
        'DisplayName', DisplayName);
end
ax2.ThetaTick = linspace(0,360,7);
ax2.ThetaTickLabel = [labels6 labels6(1)];
legend(ax2, 'show','Location','bestoutside', 'Interpreter','latex');
hold(ax2, 'off');

% % 第四份结果（三个子图：全，半天，全天）
% figure('Position', [200 200 500 500]);
% ax4 = polaraxes;
% hold(ax4, 'on');
% for i = 1:5
%     DisplayName = ['$\hat{\eta}=', num2str(eta(i)), '$'];
%     h = polarplot(ax4, ...
%         linspace(0, 2*pi, 8), ...
%         [data4(i,:) data4(i,1)], ...
%         linetypes{i}, ...
%         'LineWidth',2, ...
%         'Color',linecolors(i,:), ...
%         'MarkerFaceColor',linecolors(i,:), ...
%         'MarkerSize',4.5, ...
%         'DisplayName', DisplayName);
% end
% ax4.ThetaTick = linspace(0,360,8);
% ax4.ThetaTickLabel = [labels7 labels7(1)];
% legend(ax4, 'show','Location','bestoutside', 'Interpreter','latex');
% hold(ax4, 'off');
% 
% figure('Position', [200 200 500 500]);
% ax41 = polaraxes;
% hold(ax41, 'on');
% for i = 1:5
%     DisplayName = ['$\hat{\eta}=', num2str(eta(i)), '$'];
%     h = polarplot(ax41, ...
%         linspace(0, 2*pi, 8), ...
%         [data41(i,:) data41(i,1)], ...
%         linetypes{i}, ...
%         'LineWidth',2, ...
%         'Color',linecolors(i,:), ...
%         'MarkerFaceColor',linecolors(i,:), ...
%         'MarkerSize',4.5, ...
%         'DisplayName', DisplayName);
% end
% ax41.ThetaTick = linspace(0,360,8);
% ax41.ThetaTickLabel = [labels7 labels7(1)];
% legend(ax41, 'show','Location','bestoutside', 'Interpreter','latex');
% hold(ax41, 'off');
% 
% figure('Position', [200 200 500 500]);
% ax42 = polaraxes;
% hold(ax42, 'on');
% for i = 1:5
%     DisplayName = ['$\hat{\eta}=', num2str(eta(i)), '$'];
%     h = polarplot(ax42, ...
%         linspace(0, 2*pi, 8), ...
%         [data42(i,:) data42(i,1)], ...
%         linetypes{i}, ...
%         'LineWidth',2, ...
%         'Color',linecolors(i,:), ...
%         'MarkerFaceColor',linecolors(i,:), ...
%         'MarkerSize',4.5, ...
%         'DisplayName', DisplayName);
% end
% ax42.ThetaTick = linspace(0,360,8);
% ax42.ThetaTickLabel = [labels7 labels7(1)];
% legend(ax42, 'show','Location','bestoutside', 'Interpreter','latex');
% hold(ax42, 'off');