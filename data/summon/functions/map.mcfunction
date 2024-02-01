summon item_display ~ ~ ~ {Tags:["map","object","new"],item:{Count:1,id:"minecraft:stick",tag:{CustomModelData:6}},item_display:"head"}
execute align xyz positioned ~.5 ~ ~.5 rotated ~ 0 run tp @e[tag=new] ~ ~ ~ ~ ~
execute as @e[tag=map,tag=object,tag=new] run summon minecraft:interaction ^ ^ ^ {Tags:["map","object","click"],height:0.1f,width:0.6f}
tag @e remove new