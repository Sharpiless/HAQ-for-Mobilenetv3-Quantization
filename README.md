
# HAQ-for-Mobilenetv3-Quantization

## 数据集:

数据及使用DTD数据集，下载后运行:

```bash
python  lib/utils/make_data.py
```

预处理数据及路径

## 预训练模型：

```bash
bash run_pretrained.sh
```

## 聚类搜索：

```bash
bash run_kmeans_quantize_search.sh.sh
```

搜索完后将搜索到的结果添加到finetune.py中

## 开始量化：

```bash
bash run/run_kmeans_quantize_finetune.sh
```

## 实验结果：

（还没跑完，下面是官方结果）

| Models                   | preserve ratio | Top1 Acc (%) | Top5 Acc (%) |
| ------------------------ | -------------- | ------------ | ------------ |
| resnet50 (original)      |       1.0      |     76.15    |    92.87     |
| resnet50 (10x compress)  |       0.1      |     75.48    |    92.42     |




| Models                    | preserve ratio | Top1 Acc (%) | Top5 Acc (%) |
| ------------------------  | -------------- | ------------ | ------------ |
| mobilenetv2 (original)    |       1.0      |     72.05    |    90.49     |
| mobilenetv2 (0.6x latency)|       0.6      |     71.23    |    90.00     |

# 关注我的公众号：

感兴趣的同学关注我的公众号——可达鸭的深度学习教程：

![在这里插入图片描述](https://img-blog.csdnimg.cn/20210127153004430.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NDkzNjg4OQ==,size_16,color_FFFFFF,t_70)


# 联系作者：

> B站：[https://space.bilibili.com/470550823](https://space.bilibili.com/470550823)

> CSDN：[https://blog.csdn.net/weixin_44936889](https://blog.csdn.net/weixin_44936889)

> AI Studio：[https://aistudio.baidu.com/aistudio/personalcenter/thirdview/67156](https://aistudio.baidu.com/aistudio/personalcenter/thirdview/67156)

> Github：[https://github.com/Sharpiless](https://github.com/Sharpiless)

