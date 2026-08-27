# 停止空投生成

scoreboard players set global chest_state 0
bossbar set chest_bar visible false

tellraw @a ["", {"text":"[空投系统] ","color":"red","bold":true},{"text":"空投生成已停止！","color":"white"}]
