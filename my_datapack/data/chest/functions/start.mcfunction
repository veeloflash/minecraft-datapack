# 开始空投生成

# 检查区域是否已设置
execute unless score $x1 chest_x1 matches 0.. run tellraw @a ["", {"text":"[空投系统] ","color":"red","bold":true},{"text":"请先使用 /chest [x1,z1] [x2,z2] 设置区域！","color":"white"}]
execute unless score $x1 chest_x1 matches 0.. run return

# 设置状态为运行中
scoreboard players set global chest_state 1

# 初始化倒计时（转换为tick）
scoreboard players operation global chest_time = global chest_interval
scoreboard players operation global chest_time *= 20

tellraw @a ["", {"text":"[空投系统] ","color":"green","bold":true},{"text":"空投生成已开始！","color":"white"}]
