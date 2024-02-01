summon item_display ~ ~ ~ {Tags:["ladder","object","new"],item:{Count:1,id:"minecraft:stick",tag:{CustomModelData:7}},item_display:"head"}
tp @e[tag=new] ~ ~ ~ ~ ~
execute as @e[tag=ladder,tag=object,tag=new] rotated ~ 0 run summon minecraft:interaction ^ ^ ^ {Tags:["ladder","object","click"],height:1f,width:1f}
tag @e remove new