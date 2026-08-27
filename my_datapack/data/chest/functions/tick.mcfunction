# 每 tick 执行的逻辑

# 只在运行状态下执行
execute if score global chest_state matches 1 run function chest:loop
