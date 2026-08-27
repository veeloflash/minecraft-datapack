# 设置玩家可用的 trigger
scoreboard objectives add chest_x1 trigger
scoreboard objectives add chest_z1 trigger
scoreboard objectives add chest_x2 trigger
scoreboard objectives add chest_z2 trigger
scoreboard objectives add chest_time trigger

tellraw @a ["", {"text":"[空投系统] ","color":"green","bold":true},{"text":"已启用！使用 /trigger 命令设置坐标和时间。\n查看帮助：/function chest:help","color":"white"}]
