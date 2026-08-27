# 主循环逻辑

# 倒计时减少
scoreboard players remove global chest_time 1

# 计算剩余秒数用于显示
scoreboard players operation $sec chest_count = global chest_time
scoreboard players operation $sec chest_count /= 20

# 更新 Boss 条
bossbar set chest_bar name ["", {"text":"下次空投: ","color":"gold"},{"score":{"name":"$sec","objective":"chest_count"},"color":"white"},{"text":" 秒","color":"yellow"}]
bossbar set chest_bar value global chest_time
bossbar set chest_bar max global chest_interval
execute if score global chest_time chest_interval matches 1.. run bossbar set chest_bar color yellow
execute if score global chest_time chest_time matches 0 run bossbar set chest_bar color red

# 检查是否时间到
execute if score global chest_time matches ..0 run function chest:spawn
