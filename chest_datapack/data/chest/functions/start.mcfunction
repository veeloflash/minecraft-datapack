# 开始生成空投
scoreboard players set $chest_running chest_running 1

# 从storage读取时间设置到计时器
execute store result score $chest_timer chest_timer run data get storage chest:config time
execute store result score $chest_time chest_time run data get storage chest:config time

# 创建Boss Bar
bossbar add chest:timer {"name":"[空投系统] 下次空投倒计时","color":"yellow","max":60,"value":60,"visible":true}

# 启动消息
tellraw @a [{"text":"[","color":"gray"},{"text":"空投系统","color":"gold"},{"text":"] ","color":"gray"},{"text":"空投系统已启动！首次空投将在","color":"white"},{"score":"chest_time chest_time","color":"yellow"},{"text":"秒后到达...","color":"white"}]
