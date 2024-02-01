data modify storage climbing main.value.pos1 set from entity @s Pos
execute store result score @s area.x run data get storage climbing main.value.pos1[0]
execute store result score @s area.z run data get storage climbing main.value.pos1[2]
execute store success score #0 V unless score @s area.x matches -75..-67 unless score @s area.x matches 346..352 run function main:mode/gwr/add