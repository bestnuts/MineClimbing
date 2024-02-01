title @s subtitle ""
execute store result storage climbing main.value.id int 1 run scoreboard players get @s User.id
execute if entity @s[tag=!map,tag=!compass] run function climbing:ui/hide_bossbar with storage climbing main.value
execute unless score @s User.cool_item = @s User.cool_item if predicate climbing:util/looking_at-interaction run function climbing:object/looking

execute store result score #0 V run data get entity @s Pos[1]
function climbing:util/ambient/main
execute as @s[gamemode=!creative,gamemode=!spectator] unless score @s diedTick = @s diedTick run function climbing:survival

execute if score @s User.cool_item matches 1.. run scoreboard players remove @s User.cool_item 1
execute if score @s User.cool_item matches ..0 run scoreboard players reset @s User.cool_item
function climbing:util/point/main

execute if predicate climbing:item/check_custom store result score @s User.curr_item run data get entity @s SelectedItem.tag.data.id
execute if score @s User.delta_item = @s User.delta_item unless score @s User.delta_item = @s User.curr_item run function climbing:item/id_last
scoreboard players reset @s User.delta_item
execute unless predicate climbing:item/check_custom if score @s User.curr_item = @s User.curr_item run function climbing:item/id_delta
execute if predicate climbing:item/check_custom unless score @s User.cool_item = @s User.cool_item run function climbing:item/id_check with entity @s SelectedItem.tag.data

execute if score @s screenEffect = @s screenEffect run function climbing:util/screen/main
execute as @s[tag=compass] run function climbing:util/compass/main
execute as @s[tag=map] run function climbing:util/map/main
function summon:entity_pool

execute if score @s fall matches 400.. run function climbing:util/fall/calc
execute if score @s damage matches 1.. unless score @s diedTick = @s diedTick run function climbing:util/damage/calc

execute as @s[tag=!no_ui] unless score @s diedTick = @s diedTick run function climbing:ui/main

scoreboard players reset @s carrot_click
scoreboard players reset @s jump
scoreboard players reset @s fall
scoreboard players reset @s damage
scoreboard players reset @s[tag=!bgm] bgmTick

xp set @s 0 levels

scoreboard players add @s[tag=bgm] bgmTick 1
execute if score @s bgmTick matches 6000.. run function main:bgm