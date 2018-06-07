### 关于视图内容的压缩与拉伸优先级

#### 基本概念：

对于一个视图：

- 它的默认的 **拉伸阻力优先级（Content Hugging Priority）** 在水平（Horizontal）和垂直（Vertical）方向上的默认优先级都是 `251`！
- 它的默认的 **压缩阻力优先级（Content Compression Resistance Priority）** 在水平（Horizontal）和垂直（Vertical）方向上的默认优先级都是 `750`！

##### 核心要点：

- **Content Hugging Priority 优先级越高越难被 拉伸！**
- **Content Compression Resistance Priority 优先级越高越难被 压缩！**

#### 水平方向并排排列两个视图，分别为视图1和视图2，如果你想让你的视图2水平方向可以被拉伸，需要怎么做？

方案1：设置视图2的水平拉伸优先级**小于** 默认优先级。

```swift
label2.setContentCompressionResistancePriority(UILayoutPriorityDefaultLow, for: .horizontal)
```

方案2：设置视图1的水平压缩阻力**大于**默认优先级。

```swift
label1.setContentCompressionResistancePriority(UILayoutPriorityDefaultHigh, for: .horizontal)
```





