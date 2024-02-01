tag @s add this.origin

data modify storage climbing main.value.pos1 set from entity @s Pos
execute store result score #0 V run data get storage climbing main.value.pos1[0]
execute store result score #1 V run data get storage climbing main.value.pos1[1]
execute store result score #2 V run data get storage climbing main.value.pos1[2]
execute store result storage climbing main.value.id int 1 run scoreboard players get @s User.id
function climbing:util/map/bossbar with storage climbing main.value

tag @s remove this.origin