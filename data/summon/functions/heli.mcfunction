summon marker ~ ~ ~ {Tags:["heli","object","new"]}
execute store result score @e[tag=new] Entity.id run scoreboard players add !id Entity.id 1
scoreboard players operation @e[tag=new] timestamp = !gametime V
tag @e remove new

summon item_display ~ ~ ~ {teleport_duration:60,Tags:["heli","part.heli","object","body","new"],item:{Count:1,id:"minecraft:stick",tag:{CustomModelData:201}},item_display:"head",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[10f,10f,10f]}}
scoreboard players operation @e[tag=new] Matched.id = !id Entity.id
tag @e remove new