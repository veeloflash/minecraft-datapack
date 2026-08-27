# 初始化数据包变量
scoreboard objectives add chest_time dummy
scoreboard objectives add chest_state dummy
scoreboard objectives add chest_x1 dummy
scoreboard objectives add chest_z1 dummy
scoreboard objectives add chest_x2 dummy
scoreboard objectives add chest_z2 dummy
scoreboard objectives add chest_interval dummy
scoreboard objectives add chest_count dummy

# 设置默认状态
scoreboard players set global chest_state 0
scoreboard players set global chest_interval 60
