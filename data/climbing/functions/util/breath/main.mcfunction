scoreboard players add @s breathTick 1
execute if score @s breathTick matches 110..120 anchored eyes rotated ~ ~40 positioned ^ ^ ^.4 run particle minecraft:effect ~ ~ ~
execute if score @s breathTick matches 120.. run scoreboard players reset @s breathTick