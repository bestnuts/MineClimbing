scoreboard players set #delta V 1
tag @s add this.player
execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ blue_candle run title @s subtitle [{"text":"","color":"#4e5c24"},{"text":"클릭"}]
execute if score @s carrot_click matches 1.. run function climbing:item/list/pick/add
execute if score @s User.delta_item = @s User.delta_item run function climbing:item/list/pick/delete
tag @s remove this.player