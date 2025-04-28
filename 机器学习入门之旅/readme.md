## 自定义预处理函数
通常需要对原始数据的每个采样应用一系列预处理操作。自动化此过程的第一步是创建一个应用特定预处理操作的自定义函数
### 函数建立
```C
function dataout = functionName(datain)
  % do something with datain
  dataout = ...
end
