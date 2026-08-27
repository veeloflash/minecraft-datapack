# 填充治疗空投战利品
execute as @e[type=shulker,tag=chest_drop,distance=..100] at @s run function chest:spawn_boxes:fill_one:healing
