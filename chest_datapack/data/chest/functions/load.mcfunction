# 初始化记分板和存储
scoreboard objectives add chest_x1 dummy
scoreboard objectives add chest_z1 dummy
scoreboard objectives add chest_x2 dummy
scoreboard objectives add chest_z2 dummy
scoreboard objectives add chest_time dummy
scoreboard objectives add chest_timer dummy
scoreboard objectives add chest_running dummy
scoreboard objectives add temp dummy

# 设置默认值
data modify storage chest:config x1 set value 0
data modify storage chest:config z1 set value 0
data modify storage chest:config x2 set value 100
data modify storage chest:config z2 set value 100
data modify storage chest:config time set value 60

scoreboard players set $chest_running chest_running 0
scoreboard players set $chest_timer chest_timer 0
scoreboard players set $chest_time chest_time 60

# 欢迎消息
tellraw @a [{"text":"[","color":"gray"},{"text":"空投系统","color":"gold"},{"text":"] ","color":"gray"},{"text":"数据包已加载！\n","color":"white"},{"text":"用法:\n","color":"yellow"},{"text":"  /data modify storage chest:config x1 set value <x1>\n","color":"gray"},{"text":"  /data modify storage chest:config z1 set value <z1>\n","color":"gray"},{"text":"  /data modify storage chest:config x2 set value <x2>\n","color":"gray"},{"text":"  /data modify storage chest:config z2 set value <z2>\n","color":"gray"},{"text":"  /data modify storage chest:config time set value <秒数>\n","color":"gray"},{"text":"  /function chest:start - 开始生成\n","color":"green"},{"text":"  /function chest:stop - 停止生成","color":"red"}]
