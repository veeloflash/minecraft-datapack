# 空投系统数据包

一个 Minecraft 数据包，用于在指定区域随机生成潜影盒空投。

## 功能特点

- 📦 在指定矩形区域内随机生成潜影盒（y=300）
- ⏱️ 可自定义空投间隔时间
- 📊 Boss 条显示下次空投倒计时
- ✨ 高亮效果和粒子效果
- 🎮 使用 trigger 命令方便玩家设置

## 安装方法

1. 将 `my_datapack` 文件夹复制到你的 Minecraft 存档的 `datapacks` 文件夹中
2. 在游戏中输入 `/reload` 重新加载数据包
3. 或者输入 `/datapack enable "file/my_datapack"` 启用数据包

## 使用说明

### 方法一：使用 Trigger 命令（推荐）

```minecraft
# 1. 设置区域坐标
/trigger chest_x1 set <x1值>
/trigger chest_z1 set <z1值>
/trigger chest_x2 set <x2值>
/trigger chest_z2 set <z2值>

# 2. 设置空投间隔时间（秒）
/trigger chest_time set <秒数>

# 3. 开始空投
/function chest:start

# 4. （可选）停止空投
/function chest:stop
```

### 方法二：直接使用函数

```minecraft
# 设置区域（需要配合 execute store）
/function chest:set_area

# 设置时间
/function chest:set_time

# 开始/停止
/function chest:start
/function chest:stop
```

### 查看帮助

```minecraft
/function chest:help
```

## 命令列表

| 命令 | 说明 |
|------|------|
| `/trigger chest_x1 set <值>` | 设置区域左上角 X 坐标 |
| `/trigger chest_z1 set <值>` | 设置区域左上角 Z 坐标 |
| `/trigger chest_x2 set <值>` | 设置区域右下角 X 坐标 |
| `/trigger chest_z2 set <值>` | 设置区域右下角 Z 坐标 |
| `/trigger chest_time set <值>` | 设置空投间隔时间（秒） |
| `/function chest:start` | 开始空投生成 |
| `/function chest:stop` | 停止空投生成 |
| `/function chest:help` | 显示帮助信息 |

## 技术细节

- Y 坐标固定为 300
- 潜影盒带有 `Glowing` 和 `Falling` 标签
- 使用末影烛粒子效果进行高亮
- Boss 条颜色会根据剩余时间变化（黄色→红色）

## 版本要求

- Minecraft 1.19 - 1.19.2 (pack_format: 10)
- 需要开启作弊模式

## 许可证

MIT License
