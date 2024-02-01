scoreboard players remove #0 V 80
scoreboard players operation #0 V *= #23 C
scoreboard players operation #0 V /= #240 C
scoreboard players operation #0 V /= #2 C
execute if predicate climbing:equip/head run scoreboard players operation #0 V /= #2 C
execute if score #0 V matches 1.. run scoreboard players operation @s User.oxygen -= #0 V
scoreboard players reset @s User.oxygen_tick