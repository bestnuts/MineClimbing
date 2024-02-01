data modify storage climbing main.value.pos2 set from entity @s Pos
scoreboard players set #0 V -13
scoreboard players set #1 V -125
execute store result score #2 V run data get storage climbing main.value.pos2[0]
execute store result score #3 V run data get storage climbing main.value.pos2[2]
execute store result score #4 V run data get entity @s Rotation[0]
execute store result storage climbing main.value.math.a int 1 run scoreboard players operation #0 V -= #2 V
execute store result storage climbing main.value.math.b int -1 run scoreboard players operation #1 V -= #3 V

summon marker ~ ~ ~ {Tags:["arctan"]}
execute as @e[tag=arctan,type=marker] run function climbing:util/compass/arctan with storage climbing main.value.math
scoreboard players operation #4 V += !arctan V
scoreboard players operation #4 V %= #360 C
scoreboard players operation #4 V /= #8 C
scoreboard players remove #4 V 44
scoreboard players operation #4 V *= #-1 C
execute store result storage climbing main.value.a int 1 run scoreboard players get #4 V
scoreboard players set #type V 1
function climbing:util/compass/list with storage climbing main.value
#
scoreboard players set #0 V -70
scoreboard players set #1 V 349
execute store result score #4 V run data get entity @s Rotation[0]
execute store result storage climbing main.value.math.a int 1 run scoreboard players operation #0 V -= #2 V
execute store result storage climbing main.value.math.b int -1 run scoreboard players operation #1 V -= #3 V

summon marker ~ ~ ~ {Tags:["arctan"]}
execute as @e[tag=arctan,type=marker] run function climbing:util/compass/arctan with storage climbing main.value.math
scoreboard players operation #4 V += !arctan V
scoreboard players operation #4 V %= #360 C
scoreboard players operation #4 V /= #8 C
scoreboard players remove #4 V 44
scoreboard players operation #4 V *= #-1 C
execute store result storage climbing main.value.a int 1 run scoreboard players get #4 V
scoreboard players set #type V 2
function climbing:util/compass/list with storage climbing main.value
#
scoreboard players set #0 V 83
scoreboard players set #1 V 71
execute store result score #4 V run data get entity @s Rotation[0]
execute store result storage climbing main.value.math.a int 1 run scoreboard players operation #0 V -= #2 V
execute store result storage climbing main.value.math.b int -1 run scoreboard players operation #1 V -= #3 V

summon marker ~ ~ ~ {Tags:["arctan"]}
execute as @e[tag=arctan,type=marker] run function climbing:util/compass/arctan with storage climbing main.value.math
scoreboard players operation #4 V += !arctan V
scoreboard players operation #4 V %= #360 C
scoreboard players operation #4 V /= #8 C
scoreboard players remove #4 V 44
scoreboard players operation #4 V *= #-1 C
execute store result storage climbing main.value.a int 1 run scoreboard players get #4 V
scoreboard players set #type V 3
function climbing:util/compass/list with storage climbing main.value
#
scoreboard players set #0 V -369
scoreboard players set #1 V -24
execute store result score #4 V run data get entity @s Rotation[0]
execute store result storage climbing main.value.math.a int 1 run scoreboard players operation #0 V -= #2 V
execute store result storage climbing main.value.math.b int -1 run scoreboard players operation #1 V -= #3 V

summon marker ~ ~ ~ {Tags:["arctan"]}
execute as @e[tag=arctan,type=marker] run function climbing:util/compass/arctan with storage climbing main.value.math
scoreboard players operation #4 V += !arctan V
scoreboard players operation #4 V %= #360 C
scoreboard players operation #4 V /= #8 C
scoreboard players remove #4 V 44
scoreboard players operation #4 V *= #-1 C
execute store result storage climbing main.value.a int 1 run scoreboard players get #4 V
scoreboard players set #type V 4
function climbing:util/compass/list with storage climbing main.value
#
execute if score @s waypoint.x = @s waypoint.x if score @s waypoint.z = @s waypoint.z run function climbing:util/compass/waypoint