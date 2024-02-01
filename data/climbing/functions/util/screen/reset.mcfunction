scoreboard players remove @s screenLoop 1
execute if score @s screenLoop matches 1.. run scoreboard players reset @s screenTick
execute if score @s screenLoop matches 0 run scoreboard players reset @s screenTick
execute if score @s screenLoop matches 0 run scoreboard players reset @s screenEffect
execute if score @s screenLoop matches 0 run scoreboard players reset @s screenLoop