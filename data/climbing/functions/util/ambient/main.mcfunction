execute if score !daytime V matches 13000.. unless score @s forestStack = @s forestStack positioned over world_surface if block ~ ~-1 ~ #climbing:ambient_forest run function climbing:util/ambient/forest/add

scoreboard players operation @s ambDelta = @s ambType
execute store result score @s ambType run function climbing:util/ambient/return
execute unless score @s ambDelta = @s ambType run scoreboard players set @s ambTick 69
scoreboard players add @s ambTick 1
execute if score @s ambTick matches 77.. unless score @s diedTick = @s diedTick run function climbing:util/ambient/sounds
execute if score #0 V matches ..232 run function climbing:util/ambient/particle