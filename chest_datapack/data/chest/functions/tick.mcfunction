# 每tick减少计时器
scoreboard players remove $chest_timer chest_timer 1

# 如果计时器<=0且正在运行，生成空投并重置
execute if score $chest_timer chest_timer matches ..0 if score $chest_running chest_running matches 1 run function chest:spawn_and_reset

# 更新Boss Bar (仅在运行时)
execute if score $chest_running chest_running matches 1 run function chest:update_bossbar
