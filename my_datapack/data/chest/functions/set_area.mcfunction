# 设置区域坐标 (x1, z1) (x2, z2)
# 用法: /function chest:set_area x1=<val> z1=<val> x2=<val> z2=<val>

scoreboard players operation $x1 chest_x1 = x1 chest_temp
scoreboard players operation $z1 chest_z1 = z1 chest_temp
scoreboard players operation $x2 chest_x2 = x2 chest_temp
scoreboard players operation $z2 chest_z2 = z2 chest_temp

tellraw @a ["", {"text":"[空投系统] ","color":"gold","bold":true},{"text":"区域已设置: (","color":"white"},{"selector":"@s","color":"yellow"},{"text":", 300, ","color":"white"},{"score":{"name":"$x1","objective":"chest_x1"},"color":"yellow"},{"text":") 到 (","color":"white"},{"selector":"@s","color":"yellow"},{"text":", 300, ","color":"white"},{"score":{"name":"$x2","objective":"chest_x2"},"color":"yellow"},{"text":")","color":"white"}]
