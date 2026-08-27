# 停止生成空投
scoreboard players set $chest_running chest_running 0

# 移除Boss Bar
bossbar remove chest:timer

# 停止消息
tellraw @a [{"text":"[","color":"gray"},{"text":"空投系统","color":"gold"},{"text":"] ","color":"gray"},{"text":"空投系统已停止","color":"white"}]
