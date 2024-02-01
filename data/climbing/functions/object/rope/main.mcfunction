tag @s add this.rope
execute as @a if score @s User.id = @e[tag=this.rope,limit=1,type=block_display] Matched.id run tag @s add this.player

data modify storage climbing main.value.pos1 set from entity @s Pos
execute store result score #0 V run data get storage climbing main.value.pos1[0] 100
execute store result score #1 V store result score #6 V run data get storage climbing main.value.pos1[1] 100
execute store result score #2 V run data get storage climbing main.value.pos1[2] 100
data modify storage climbing main.value.pos2 set from entity @a[tag=this.player,limit=1] Pos
execute store result score #3 V run data get storage climbing main.value.pos2[0] 100
execute store result score #4 V run data get storage climbing main.value.pos2[1] 100
execute store result score #5 V run data get storage climbing main.value.pos2[2] 100

data modify storage climbing main.value.math.list set value [0f,0f,0f,0f, 0f,0f,0f,0f, 0f,0f,0f,0f, 0f,0f,0f,1f]
execute store result storage climbing main.value.math.list[0] float 0.01 run scoreboard players operation #0 V -= #3 V
execute store result storage climbing main.value.math.list[4] float 0.01 run scoreboard players operation #1 V -= #4 V
execute store result storage climbing main.value.math.list[8] float 0.01 run scoreboard players operation #2 V -= #5 V

summon text_display 0.0 0.0 0.0 {Tags:["sqrt"]}
execute as @e[tag=sqrt,type=text_display] run function climbing:object/rope/position

tag @s remove this.rope
tag @a remove this.player