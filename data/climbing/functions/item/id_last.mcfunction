scoreboard players set #true V 1
execute store result storage climbing main.value.id int 1 run scoreboard players get @s User.delta_item
function climbing:item/id_check with storage climbing main.value