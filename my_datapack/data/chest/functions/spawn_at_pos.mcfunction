# 在设定区域内随机位置生成潜影盒

# 计算随机 X 坐标
scoreboard players operation $rand_x chest_count = $x1 chest_x1
scoreboard players operation $dx chest_count -= $x2 chest_x2
execute if score $dx chest_count matches ..-1 run scoreboard players operation $dx chest_count *= -1
scoreboard players add $dx chest_count 1
scoreboard players random $rand_x chest_count 0 $dx
scoreboard players operation $rand_x chest_count += $x1 chest_x1

# 计算随机 Z 坐标
scoreboard players operation $rand_z chest_count = $z1 chest_z1
scoreboard players operation $dz chest_count -= $z2 chest_z2
execute if score $dz chest_count matches ..-1 run scoreboard players operation $dz chest_count *= -1
scoreboard players add $dz chest_count 1
scoreboard players random $rand_z chest_count 0 $dz
scoreboard players operation $rand_z chest_count += $z1 chest_z1

# 生成带高亮的潜影盒 (y=300, 落沙状态)
execute positioned $rand_x chest_count 300 $rand_z chest_count run summon shulker ~ ~ ~ {NoAI:1b,Silent:1b,CustomName:'{"text":"空投箱","color":"gold","bold":true}',Glowing:1b,Falling:1b}

# 创建高亮粒子效果
execute positioned $rand_x chest_count 300 $rand_z chest_count run particle minecraft:end_rod ~ ~1 ~ 0.5 0.5 0.5 0.1 50

tellraw @a ["", {"text":"[空投系统] ","color":"green","bold":true},{"text":"空投已降落在: (","color":"white"},{"score":{"name":"$rand_x","objective":"chest_count"},"color":"yellow"},{"text":", 300, ","color":"white"},{"score":{"name":"$rand_z","objective":"chest_count"},"color":"yellow"},{"text":")","color":"white"}]
