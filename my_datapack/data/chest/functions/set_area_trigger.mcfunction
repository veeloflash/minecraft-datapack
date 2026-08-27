# 触发器：设置区域坐标
# 通过 trigger 命令设置: 
# /trigger chest_x1 set <值>
# /trigger chest_z1 set <值>
# /trigger chest_x2 set <值>
# /trigger chest_z2 set <值>
# 然后执行 /function chest:confirm_area

scoreboard players operation $x1 chest_x1 = chest_x1 trigger
scoreboard players operation $z1 chest_z1 = chest_z1 trigger
scoreboard players operation $x2 chest_x2 = chest_x2 trigger
scoreboard players operation $z2 chest_z2 = chest_z2 trigger

tellraw @a ["", {"text":"[空投系统] ","color":"gold","bold":true},{"text":"区域已设置！\n","color":"white"},{"text":"左上角: (","color":"gray"},{"score":{"name":"$x1","objective":"chest_x1"},"color":"yellow"},{"text":", 300, ","color":"gray"},{"score":{"name":"$z1","objective":"chest_z1"},"color":"yellow"},{"text":")\n","color":"gray"},{"text":"右下角: (","color":"gray"},{"score":{"name":"$x2","objective":"chest_x2"},"color":"yellow"},{"text":", 300, ","color":"gray"},{"score":{"name":"$z2","objective":"chest_z2"},"color":"yellow"},{"text":")","color":"gray"}]

# 重置 trigger
scoreboard players reset @a chest_x1
scoreboard players reset @a chest_z1
scoreboard players reset @a chest_x2
scoreboard players reset @a chest_z2
