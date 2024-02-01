tag @s add this.heli
execute as @e[tag=part.heli,type=item_display] if score @s Matched.id = @e[tag=this.heli,limit=1,type=marker] Entity.id run tag @s add this.part

data modify storage climbing main.value.pos1 set from entity @s Pos
execute store result score #0 V run data get storage climbing main.value.pos1[0]
execute store result score #1 V run data get storage climbing main.value.pos1[2]
execute as @e[tag=heli.destination,limit=1,type=marker] run function climbing:object/heli/destination_pos

scoreboard players reset #true V
execute unless score #0 V = #2 V unless score #1 V = #3 V if entity @e[tag=this.part,distance=...1] run function climbing:object/heli/motion_next
execute unless score #true V matches 1 at @e[tag=heli.destination,limit=1] rotated as @s run tp @s ~ ~ ~ ~ ~
execute if score @s timestamp <= !gametime V run function climbing:object/heli/soundtrack
execute at @s as @e[tag=this.part] run function climbing:object/heli/part_teleport
tag @s remove this.heli
tag @e remove this.part