summon item_display ~ ~ ~ {Tags:["egg","object","new"],item:{Count:1,id:"minecraft:stick",tag:{CustomModelData:102}},item_display:"head"}
execute rotated ~ 0 run tp @e[tag=new] ~ ~ ~ ~ ~
tag @e remove new