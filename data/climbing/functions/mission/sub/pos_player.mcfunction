data modify storage climbing main.value.pos1 set from entity @s Pos
execute store result score @s area.x run data get storage climbing main.value.pos1[0]
execute store result score @s area.y run data get storage climbing main.value.pos1[1]
execute store result score @s area.z run data get storage climbing main.value.pos1[2]

$execute if score @s area.x matches $(a)..$(d) if score @s area.y matches $(b)..$(e) if score @s area.z matches $(c)..$(f) run scoreboard players add #0 V 1