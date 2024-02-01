summon item_display ~ ~ ~ {Tags:["bottle","object","new"],item:{Count:1,id:"minecraft:stick",tag:{CustomModelData:3}},item_display:"head"}
execute align xyz positioned ~.5 ~ ~.5 rotated ~ 0 run tp @e[tag=new] ~ ~ ~ ~ ~
execute as @e[tag=bottle,tag=object,tag=new] run summon minecraft:interaction ^ ^ ^ {Tags:["bottle","object","click"],height:0.1f,width:0.6f}
tag @e remove new