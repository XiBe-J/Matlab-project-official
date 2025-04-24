%% 
% Apply Model to Many Letters
% 
% Instructions are in the task pane to the left. Complete and submit each task 
% one at a time.
% 
% Do not edit. This code loads the data.

load featuredata13letters.mat
features
testdata
%% 
% Task 1
% 
% MAT 文件 |featuredata13letters.mat| 包含表 (|features|)，其中的特征与之前的相同。然而，现在的数据包括 
% 13 个不同字母的采样。

gscatter(features.AspectRatio,features.Duration,features.Character)
%% 
% Task 2
% 
% 使用 |fitcknn| 函数对数据进行模型拟合。将 |"NumNeighbors"| 属性设置为 5。将模型存储在名为 |knnmodel| 的变量中。使用模型预测 
% |testdata| 中存储的观测值的类。将预测存储在名为 |predictions| 的变量中。

knnmodel=fitcknn(features,"Character","NumNeighbors",5)
predictions = predict(knnmodel,testdata);
%% 
% Task 3
% 
% 计算模型的误分类率，创建一个混淆矩阵图。将误分类率存储在名为 |misclass| 的变量中。

misclass = sum(prediction ~= testdata.Character)/numel(prediction)
confusionchart(testdata.Character,predictions)
%% 
% Further Practice