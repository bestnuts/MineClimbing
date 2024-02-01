$execute store result score #0 V store result score #6 V run data get storage climbing raider.pos[$(a)].[0]
$execute store result score #1 V store result score #7 V run data get storage climbing raider.pos[$(a)].[1]
$execute store result score #8 V run data get storage climbing raider.pos[$(a)].[2]
scoreboard players set #2 V -369
scoreboard players set #3 V -24
scoreboard players operation #4 V = !raider.dir GameHandler
scoreboard players add #4 V 180
scoreboard players operation #4 V %= #180 V
scoreboard players remove #4 V 90
execute store result storage climbing main.value.math.a int 1 run scoreboard players operation #0 V -= #2 V
execute store result storage climbing main.value.math.b int -1 run scoreboard players operation #1 V -= #3 V

data modify storage climbing main.value.math.list set value [0f,0f,0f,0f, 0f,0f,0f,0f, 0f,0f,0f,0f, 0f,0f,0f,1f]
execute store result storage climbing main.value.math.list[0] float 1 run scoreboard players get #0 V
execute store result storage climbing main.value.math.list[8] float 1 run scoreboard players get #1 V

summon marker ~ ~ ~ {Tags:["arctan"]}
execute as @e[tag=arctan,type=marker] run function climbing:util/raider/arctan with storage climbing main.value.math
scoreboard players operation #4 V += !arctan V
scoreboard players operation #4 V %= #360 C
scoreboard players remove #4 V 360
execute store result storage climbing main.value.a int 1 run scoreboard players get #4 V
summon text_display 0.0 0.0 0.0 {Tags:["sqrt"]}
execute as @e[tag=sqrt,type=text_display] run function climbing:util/raider/position
#