# 在指定区域生成多个潜影盒
# 读取配置中的坐标范围
execute store result score #x1 temp run data get storage chest:config x1
execute store result score #z1 temp run data get storage chest:config z1
execute store result score #x2 temp run data get storage chest:config x2
execute store result score #z2 temp run data get storage chest:config z2
execute store result score #type temp run data get storage chest:config drop_type

# 计算区域大小
scoreboard players operation #dx temp = #x2 temp
scoreboard players operation #dx temp -= #x1 temp
scoreboard players operation #dz temp = #z2 temp
scoreboard players operation #dz temp -= #z1 temp

# 确保区域至少为 1
execute if score #dx temp matches ..0 run scoreboard players set #dx temp 1
execute if score #dz temp matches ..0 run scoreboard players set #dz temp 1

# 根据类型生成不同战利品的潜影盒
# 类型：0=治疗，1=食物，2=枪械，3=武器
execute if score #type temp matches 0 run function chest:spawn_boxes:healing
execute if score #type temp matches 1 run function chest:spawn_boxes:food
execute if score #type temp matches 2 run function chest:spawn_boxes:gun
execute if score #type temp matches 3 run function chest:spawn_boxes:weapon
