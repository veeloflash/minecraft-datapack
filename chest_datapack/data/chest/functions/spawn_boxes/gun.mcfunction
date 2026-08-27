# 枪械空投 - 在区域内随机位置生成 5 个潜影盒
execute store result score #rand temp run random range 1 1000
execute positioned ^#rand^ ^300^#rand^ run summon shulker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"text":"枪械","color":"aqua","bold":true},{"text":"] 空投补给箱","color":"gold","bold":true}]',Glowing:1b,Silent:1b,Color:10,Tags:["chest_drop","gun"],falling:1b}

execute store result score #rand temp run random range 1 1000
execute positioned ^#rand^ ^300^#rand^ run summon shulker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"text":"枪械","color":"aqua","bold":true},{"text":"] 空投补给箱","color":"gold","bold":true}]',Glowing:1b,Silent:1b,Color:10,Tags:["chest_drop","gun"],falling:1b}

execute store result score #rand temp run random range 1 1000
execute positioned ^#rand^ ^300^#rand^ run summon shulker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"text":"枪械","color":"aqua","bold":true},{"text":"] 空投补给箱","color":"gold","bold":true}]',Glowing:1b,Silent:1b,Color:10,Tags:["chest_drop","gun"],falling:1b}

execute store result score #rand temp run random range 1 1000
execute positioned ^#rand^ ^300^#rand^ run summon shulker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"text":"枪械","color":"aqua","bold":true},{"text":"] 空投补给箱","color":"gold","bold":true}]',Glowing:1b,Silent:1b,Color:10,Tags:["chest_drop","gun"],falling:1b}

execute store result score #rand temp run random range 1 1000
execute positioned ^#rand^ ^300^#rand^ run summon shulker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"text":"枪械","color":"aqua","bold":true},{"text":"] 空投补给箱","color":"gold","bold":true}]',Glowing:1b,Silent:1b,Color:10,Tags:["chest_drop","gun"],falling:1b}

# 延迟 1 tick 后填充战利品
schedule function chest:spawn_boxes:fill_gun 1t
