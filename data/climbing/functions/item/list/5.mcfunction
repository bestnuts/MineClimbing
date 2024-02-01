tag @s add this.player
scoreboard players reset #0 V
scoreboard players reset #1 V
execute if score @s carrot_click matches 1.. anchored feet rotated ~ 0 store result score #0 V run function climbing:item/list/ladder/check_front
execute if score #0 V matches 1.. anchored feet rotated ~ 0 run function climbing:item/list/ladder/check_length
tag @s remove this.player