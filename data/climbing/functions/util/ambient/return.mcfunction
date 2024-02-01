#-1 = gorge / 0 = out / 1 = safe / 2 = warehouse
execute positioned ~ 383 ~ positioned over world_surface unless entity @s[distance=..1] if block ~ ~-1 ~ #climbing:ambient_surface run return 1
execute positioned ~ 383 ~ positioned over world_surface unless entity @s[distance=..1] if block ~ ~-1 ~ #climbing:ambient_warehouse run return 2
scoreboard players reset #true V
execute unless block ~ ~-1 ~ #climbing:ambient_snow unless block ~ ~-2 ~ #climbing:ambient_snow unless block ~ ~-3 ~ #climbing:ambient_snow unless block ~ ~-4 ~ #climbing:ambient_snow store result score #true V run function climbing:util/ambient/return_gorge
execute if score #true V matches -1 run return -1
return 0