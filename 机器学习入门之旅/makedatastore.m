% 背景
% 您可以使用通配符为匹配特定模式的文件或文件夹创建一个数据存储。
% ds = datastore("data*.xlsx")
% 字迹数据文件名称的形式为user003_B_2.txt。
% 任务：使用 datastore 函数为所有包含字母 M 的文件创建一个数据存储。这些文件的名称中包含 _M_，扩展名为 .txt。将该数据存储存储在名为 letterds 的变量中。
%%
% Make a Datastore
%% 
% Task 1
letterds = datastore("*_M_*.txt")
%%
% Task 2
% 使用read函数从数据存储的文件中导入数据
% data = read(ds)
% 第一次使用read函数将从第一个文件导入数据。第二次使用该函数将从第二个文件中导入数据
% 任务：将第一个文件的数据导入名为data的表中
%%
% Task 3
% 任务
% 通过在水平轴上绘制 data 的 X 变量和在垂直轴上绘制 Y 变量来可视化数据。
plot(data.X,data.Y)
%% 
% Task 4
% 任务
% 从第二个文件导入并绘制数据
data = read(letterds)
plot(data.X,data.Y)
%%
% Task 5
% 任务
% 使用readall函数将所有文件中的数据导入一个名为data的表中。通过绘制Y对X的图来可视化数据
data = readall(letterds)
plot(data.X,data.Y)
%%
% 附加练习
% 尝试从保存字母V的采样的文件中导入数据
letterv = datastore("*_V_*.txt")
data = readall(letterv)
plot(data.X,data.Y)
