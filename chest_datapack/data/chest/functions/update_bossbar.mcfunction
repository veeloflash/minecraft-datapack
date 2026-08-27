# 更新Boss Bar的数值和最大值
execute store result bossbar set chest:timer value run scoreboard players get $chest_timer chest_timer
execute store result bossbar set chest:timer max run scoreboard players get $chest_time chest_time
