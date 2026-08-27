# 触发器：设置时间间隔
# 通过 trigger 命令设置: /trigger chest_time set <秒数>

scoreboard players operation global chest_interval = chest_time trigger

tellraw @a ["", {"text":"[空投系统] ","color":"gold","bold":true},{"text":"空投间隔已设置为: ","color":"white"},{"score":{"name":"global","objective":"chest_interval"},"color":"yellow"},{"text":" 秒","color":"white"}]

# 重置 trigger
scoreboard players reset @a chest_time
