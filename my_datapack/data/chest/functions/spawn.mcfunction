# 生成空投潜影盒

tellraw @a ["", {"text":"[空投系统] ","color":"red","bold":true},{"text":"空投即将到达！","color":"white"}]
title @a title {"text":"空投来袭！","color":"red","bold":true}

# 重置倒计时
scoreboard players operation global chest_time = global chest_interval
scoreboard players operation global chest_time *= 20

# 在区域内随机生成潜影盒 (y=300, 落沙状态)
execute at @a[random=1] positioned ~ ~ ~ run function chest:spawn_at_pos
