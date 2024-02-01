scoreboard players set @s User.cool_item 20
playsound item.honey_bottle.drink block @a ~ ~ ~ 1 1.2
function climbing:util/thirsty/increase {a:5}
execute store result score #0 V run data get entity @s SelectedItem.tag.data.level
scoreboard players remove #0 V 1
scoreboard players set #1 V 2
execute store result storage climbing main.value.a int 1 run scoreboard players get #0 V
execute store result storage climbing main.value.b int 1 run scoreboard players operation #1 V += #0 V
data modify storage climbing main.value.c set from entity @s SelectedItem.tag.display
execute if score #0 V matches ..0 run item replace entity @s weapon.mainhand with air
execute unless score #0 V matches ..0 run function climbing:item/list/bottle/replace with storage climbing main.value