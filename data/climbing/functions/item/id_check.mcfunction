scoreboard players set #delta V 0
$function climbing:item/list/$(id)
execute if predicate climbing:item/check_custom if score #delta V matches 1 run scoreboard players operation @s User.delta_item = @s User.curr_item