scoreboard players operation #0 V = @s waypoint.x
scoreboard players operation #1 V = @s waypoint.z
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
scoreboard players set #type V 5
function climbing:util/compass/list with storage climbing main.value