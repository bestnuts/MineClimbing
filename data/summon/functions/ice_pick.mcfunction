summon item_display ~ ~ ~ {Tags:["ice_pick","object","new"],item:{Count:1,id:"minecraft:stick",tag:{CustomModelData:5}},item_display:"head"}
execute align xyz positioned ~.5 ~ ~.5 rotated ~ 0 run tp @e[tag=new] ~ ~ ~ ~ ~
execute as @e[tag=ice_pick,tag=object,tag=new] run summon minecraft:interaction ^ ^ ^ {Tags:["ice_pick","object","click"],height:0.1f,width:0.6f}
tag @e remove new