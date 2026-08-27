# 在指定区域生成多个潜影盒
# 读取配置中的坐标范围
execute store result score #x1 temp run data get storage chest:config x1
execute store result score #z1 temp run data get storage chest:config z1
execute store result score #x2 temp run data get storage chest:config x2
execute store result score #z2 temp run data get storage chest:config z2

# 计算区域大小
scoreboard players operation #dx temp = #x2 temp
scoreboard players operation #dx temp -= #x1 temp
scoreboard players operation #dz temp = #z2 temp
scoreboard players operation #dz temp -= #z1 temp

# 确保区域至少为1
execute if score #dx temp matches ..0 run scoreboard players set #dx temp 1
execute if score #dz temp matches ..0 run scoreboard players set #dz temp 1

# 生成10个潜影盒，分布在区域内不同位置
# 使用execute at + positioned来在不同位置生成
execute at @a[x=0,y=300,z=0,dx=#dx,dz=#dz,limit=1] run summon shulker ~ ~1 ~ {CustomName:'{"text":"空投补给箱","color":"gold","bold":true}',Glowing:1b,Silent:1b,Color:10,falling:true}
execute at @a[x=0,y=300,z=0,dx=#dx,dz=#dz,limit=1] run summon shulker ~ ~1 ~ {CustomName:'{"text":"空投补给箱","color":"gold","bold":true}',Glowing:1b,Silent:1b,Color:10,falling:true}
execute at @a[x=0,y=300,z=0,dx=#dx,dz=#dz,limit=1] run summon shulker ~ ~1 ~ {CustomName:'{"text":"空投补给箱","color":"gold","bold":true}',Glowing:1b,Silent:1b,Color:10,falling:true}
execute at @a[x=0,y=300,z=0,dx=#dx,dz=#dz,limit=1] run summon shulker ~ ~1 ~ {CustomName:'{"text":"空投补给箱","color":"gold","bold":true}',Glowing:1b,Silent:1b,Color:10,falling:true}
execute at @a[x=0,y=300,z=0,dx=#dx,dz=#dz,limit=1] run summon shulker ~ ~1 ~ {CustomName:'{"text":"空投补给箱","color":"gold","bold":true}',Glowing:1b,Silent:1b,Color:10,falling:true}
