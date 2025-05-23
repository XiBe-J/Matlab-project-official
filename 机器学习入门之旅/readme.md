# 机器学习入门之旅
## 机器学习概述
待补充

---
## 分类工作流
待补充

---
## 导入和预处理数据
### 自定义预处理函数
通常需要对原始数据的每个采样应用一系列预处理操作。自动化此过程的第一步是创建一个应用特定预处理操作的自定义函数
### 函数建立
```C
function dataout = functionName(datain)
  % do something with datain
  dataout = ...
end
```

---
## 特征工程
### 信号类型
#### 归一化数据
典型的归一化包括按照均值偏移（使得偏移后的数据均值为0）或者将数据偏移并缩放到固定范围内（例如[-1,1]）。对书写的字母x和y的数据都进行偏移，使其均值为0，确保所有字母以同一点为中心。
### 计算汇总统计量（统计函数）
#### 统计函数
#### 集中趋势的度量
| 函数 | 说明 |
| ----- | ----- |
| mean | 算术均值 |
| median | 中位数（中间）值 |
| mode | 出现次数最多的值 |
| trimmean| 截尾均值（均值，不包括离群值）|
| geomean | 几何均值 |
| harmean | 调和均值 |
#### 散布的度量
| 函数 | 说明 |
| ----- | ----- |
| range	| 值的极差（最大 - 最小）|
| std |	标准差 |
| var | 方差 |
| mad | 均值绝对偏差 |
| iqr	| 四分位差（第 75 个百分位数减去第 25 个百分位数） |
#### 形状的度量
| 函数 | 说明 |
| ----- | ----- |
| skewness | 偏度（第三个中心矩） |
| kurtosis | 峰度（第四个中心矩） |
| moment | 任意阶中心矩 |
### 查找峰值
#### 知识点1
局部最小值和最大值是信号的重要特征。islocalmin和islocalmax函数接受信号作为输入，并返回与该信号长度相同的逻辑数组。
```C
idx = islocalmin(x);
```
当idx在信号中的对应值为局部最小值时，它的值为true
#### 知识点2
可以通过islocalmin或islocalmax的第二个输出获得信号中每个点的相对高差值。  
- 相对高差值：度量一个值与其周围其他值的相对差别程度。
#### 知识点3
对于含噪信号，需考虑相对高差高于给定阈值的最小值或最大值。
```C
idx = islocalmin(x,"MinProminence",threshvalue)
```
选择阈值时，注意相对高差值范围可以从0到range(x)。

### 计算导数
- 采用逼近法计算速度：对于离散数据点，需要通过使用有限差分```v=Δx/Δt```来估计速度。

---
## 分类模型
---
## 结论
