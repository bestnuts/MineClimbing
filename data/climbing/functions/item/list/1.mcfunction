scoreboard players set #delta V 1
tag @s add this.player
execute store result storage climbing main.value.id int 1 run scoreboard players get @s User.id
execute if predicate climbing:item/check_custom as @s[tag=!compass] run function climbing:item/list/compass/set with storage climbing main.value
execute if score @s User.delta_item = @s User.delta_item run function climbing:item/list/compass/delete with storage climbing main.value
tag @s remove this.player