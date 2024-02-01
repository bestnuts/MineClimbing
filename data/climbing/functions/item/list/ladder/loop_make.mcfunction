scoreboard players remove #1 V 1
execute if score #1 V matches 1.. run function climbing:util/ladder/set
execute if score #1 V matches 0 run function climbing:util/ladder/set_last
execute if score #1 V matches 1.. positioned ~ ~1 ~ run function climbing:item/list/ladder/loop_make