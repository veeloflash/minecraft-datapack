# 生成空投并重置计时器

# 生成潜影盒 (在Y=300高度，矩形区域内随机位置)
# 使用多个固定点来模拟随机分布
execute positioned ~ ~300 ~ run function chest:spawn_boxes

# 发送全服通知 - 显示区域中心点的大致位置
execute store result score #cx temp run data get storage chest:config x1
execute store result score #cx2 temp run data get storage chest:config x2
scoreboard players operation #cx temp += #cx2 temp
scoreboard players operation #cx temp /= 2
execute store result score #cz temp run data get storage chest:config z1
execute store result score #cz2 temp run data get storage chest:config z2
scoreboard players operation #cz temp += #cz2 temp
scoreboard players operation #cz temp /= 2

tellraw @a [{"text":"[","color":"gray"},{"text":"空投系统","color":"gold"},{"text":"] ","color":"gray"},{"text":"⚠️ 空投已到达！前往 X:","color":"red"},{"score":"temp #cx","color":"yellow"},{"text":", Y:300, Z:","color":"white"},{"score":"temp #cz","color":"yellow"},{"text":" 附近寻找战利品！潜影盒带有发光效果！","color":"red"}]

# 重置计时器
execute store result score $chest_timer chest_timer run data get storage chest:config time
