# 设置间隔时间 (秒)
# 用法: /function chest:set_time time=<秒数>

scoreboard players operation global chest_interval = time chest_temp

tellraw @a ["", {"text":"[空投系统] ","color":"gold","bold":true},{"text":"空投间隔已设置为: ","color":"white"},{"score":{"name":"global","objective":"chest_interval"},"color":"yellow"},{"text":" 秒","color":"white"}]
