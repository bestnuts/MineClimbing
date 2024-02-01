scoreboard players set #0 V 40
execute if predicate climbing:equip/chestplate run scoreboard players add #0 V 380
execute if predicate climbing:equip/leggings run scoreboard players add #0 V 100
execute if predicate climbing:equip/boots run scoreboard players add #0 V 50
execute if score !wind GameHandler matches 2 run scoreboard players remove #0 V 20
scoreboard players operation #1 V = !daytime V
scoreboard players operation #1 V /= #1000 C
scoreboard players operation #0 V -= #1 V
execute if score @s User.temp_tick >= #0 V run function climbing:util/temp/decrease