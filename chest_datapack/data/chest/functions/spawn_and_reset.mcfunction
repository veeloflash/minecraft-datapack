# 生成空投并重置计时器

# 根据配置的空投类型生成对应潜影盒
execute store result score #drop_type temp run data get storage chest:config drop_type
execute if score #drop_type temp matches 0 run function chest:spawn_boxes:healing
execute if score #drop_type temp matches 1 run function chest:spawn_boxes:food
execute if score #drop_type temp matches 2 run function chest:spawn_boxes:gun
execute if score #drop_type temp matches 3 run function chest:spawn_boxes:weapon

# 发送全服通知 - 显示区域中心点的大致位置
execute store result score #cx temp run data get storage chest:config x1
execute store result score #cx2 temp run data get storage chest:config x2
scoreboard players operation #cx temp += #cx2 temp
scoreboard players operation #cx temp /= 2
execute store result score #cz temp run data get storage chest:config z1
execute store result score #cz2 temp run data get storage chest:config z2
scoreboard players operation #cz temp += #cz2 temp
scoreboard players operation #cz temp /= 2

# 根据类型显示不同颜色的通知
execute if score #drop_type temp matches 0 run tellraw @a [{"text":"[","color":"gray"},{"text":"空投系统","color":"gold"},{"text":"] ","color":"gray"},{"text":"⚠️ 治疗空投已到达！前往 X:","color":"red"},{"score":"temp #cx","color":"yellow"},{"text":", Y:300, Z:","color":"white"},{"score":"temp #cz","color":"yellow"},{"text":" 附近寻找战利品！","color":"red"}]
execute if score #drop_type temp matches 1 run tellraw @a [{"text":"[","color":"gray"},{"text":"空投系统","color":"gold"},{"text":"] ","color":"gray"},{"text":"⚠️ 食物空投已到达！前往 X:","color":"green"},{"score":"temp #cx","color":"yellow"},{"text":", Y:300, Z:","color":"white"},{"score":"temp #cz","color":"yellow"},{"text":" 附近寻找战利品！","color":"green"}]
execute if score #drop_type temp matches 2 run tellraw @a [{"text":"[","color":"gray"},{"text":"空投系统","color":"gold"},{"text":"] ","color":"gray"},{"text":"⚠️ 枪械空投已到达！前往 X:","color":"aqua"},{"score":"temp #cx","color":"yellow"},{"text":", Y:300, Z:","color":"white"},{"score":"temp #cz","color":"yellow"},{"text":" 附近寻找战利品！","color":"aqua"}]
execute if score #drop_type temp matches 3 run tellraw @a [{"text":"[","color":"gray"},{"text":"空投系统","color":"gold"},{"text":"] ","color":"gray"},{"text":"⚠️ 武器空投已到达！前往 X:","color":"light_purple"},{"score":"temp #cx","color":"yellow"},{"text":", Y:300, Z:","color":"white"},{"score":"temp #cz","color":"yellow"},{"text":" 附近寻找战利品！","color":"light_purple"}]

# 重置计时器
execute store result score $chest_timer chest_timer run data get storage chest:config time
