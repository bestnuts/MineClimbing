execute if score @s ambType matches -1 positioned over world_surface unless block ~ ~-1 ~ #climbing:ambient_snow run particle white_ash ~ ~15 ~ 4 4 4 1 10 normal @s
execute if score !wind GameHandler matches 1 if score @s ambType matches 0 run particle white_ash ~ ~ ~ 4 4 4 1 10 normal @s
execute if score !wind GameHandler matches 2 if score @s ambType matches 0 run particle white_ash ~ ~ ~ 5 4 5 1 30 normal @s
execute if score !wind GameHandler matches 2 if score @s ambType matches 0 run particle cloud ~ ~ ~ 32 0 32 0.1 5 normal @s
execute if score @s ambType matches 2 run particle white_ash ~ ~ ~ 4 4 4 1 5 normal @s