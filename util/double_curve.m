%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ˫�̶�����ͼ
clc;clear;
% close all;

load experiment_data/convergence_VOC2007-Caltech101.mat

fig = figure;
% left_color = [0.00,0.45,0.74]; % ���̶���ɫ
% right_color = [1.00,0.31,0.02];% �Ҳ�̶���ɫ
left_color = [0,0,0];
right_color = [0,0,0];
set(fig,'defaultAxesColorOrder',[left_color; right_color]);
set(gca,'Fontname','Times New Roman','FontSize',16);

yyaxis left        % �������
plot(loss,'-', 'Color', [0.00,0.45,0.74],'LineWidth', 1.5, 'Marker', 'o'); % ��ɫ��left_color = [0 0 1]����һ��
ylabel('Objective function');
% axis([1 30 -0.05 0.3]); % ��ʾx,y��ķ�Χ

yyaxis right        % �����Ҳ�
plot(MAP,'-', 'Color', [1.00,0.31,0.02], 'LineWidth', 1.5, 'Marker', 'square'); % ��ɫ��right_color = [1 0 0]����һ��
ylabel('MAP (%)');
xlabel('Iteration');
legend('Objective function', 'MAP (%)');
grid on