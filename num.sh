#!/bin/bash

# 获取输入的起始页数、总数量和基础链接
start_num=$1
end_num=$2
base_url=$3  # 第三个参数为自定义的基础链接

# 如果没有提供基础链接，使用默认值
if [ -z "$base_url" ]; then
    base_url="https://www.bilibili.com/video/BV1rpWjevEip/?p="
fi

# 生成链接并输出到文件或屏幕
for ((i=start_num; i<=end_num; i++)); do
    echo "${base_url}${i}"  # 输出链接
done

