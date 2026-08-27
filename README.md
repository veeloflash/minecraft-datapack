# 空投系统数据包 (Chest Drop System)

Minecraft 1.20.1 数据包，用于在指定矩形区域随机生成发光潜影盒空投。

## 特性

- ✅ 自定义矩形空投区域 (X, Z坐标)
- ✅ Y=300 高度生成
- ✅ 可配置间隔时间
- ✅ Boss Bar 倒计时显示
- ✅ 潜影盒带发光效果和高亮名称
- ✅ 全服位置通知

## 安装

1. 将 `chest_datapack` 文件夹复制到你的存档的 `datapacks` 目录
2. 进入游戏执行 `/reload`
3. 启用数据包：`/datapack enable "file/chest_datapack"`

## 使用方法

### 1. 设置空投区域
```mcfunction
# 设置矩形区域的两个对角点 (X, Z坐标，Y固定为300)
/data modify storage chest:config x1 set value <x1>
/data modify storage chest:config z1 set value <z1>
/data modify storage chest:config x2 set value <x2>
/data modify storage chest:config z2 set value <z2>
```

### 2. 设置间隔时间
```mcfunction
# 设置两次空投之间的间隔时间 (秒)
/data modify storage chest:config time set value <秒数>
```

### 3. 启动/停止系统
```mcfunction
# 开始生成空投
/function chest:start

# 停止生成空投
/function chest:stop
```

## 示例配置

设置一个 100x100 的区域，每 60 秒生成一次空投：

```mcfunction
# 设置区域 (从 0,0 到 100,100)
/data modify storage chest:config x1 set value 0
/data modify storage chest:config z1 set value 0
/data modify storage chest:config x2 set value 100
/data modify storage chest:config z2 set value 100

# 设置间隔时间为 60 秒
/data modify storage chest:config time set value 60

# 启动系统
/function chest:start
```

## 文件结构

```
chest_datapack/
├── pack.mcmeta
└── data/
    ├── chest/
    │   └── functions/
    │       ├── load.mcfunction        # 初始化
    │       ├── tick.mcfunction        # 每tick运行
    │       ├── start.mcfunction       # 启动命令
    │       ├── stop.mcfunction        # 停止命令
    │       ├── spawn_and_reset.mcfunction
    │       ├── spawn_boxes.mcfunction
    │       └── update_bossbar.mcfunction
    └── minecraft/
        └── tags/functions/
            ├── load.json
            └── tick.json
```

## 注意事项

- Minecraft 版本：1.20.1 (pack_format: 15)
- 潜影盒生成在 Y=300 高度
- 每次生成 5 个带发光效果的潜影盒
- 确保区域足够大以容纳多个潜影盒
