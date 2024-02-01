summon item_display ~ ~ ~ {Tags:["hanger","object","new"],item:{Count:1,id:"minecraft:stick",tag:{CustomModelData:1}},item_display:"head"}
execute align xyz positioned ~.5 ~ ~.5 rotated ~ 0 run tp @e[tag=new] ~ ~ ~ ~ ~
execute as @e[tag=hanger,tag=object,tag=new] run summon minecraft:interaction ^.1 ^ ^.2 {Tags:["boots","object","click"],height:0.3f,width:0.5f}
execute as @e[tag=hanger,tag=object,tag=new] run summon minecraft:interaction ^.1 ^1 ^.1 {Tags:["mask","object","click"],height:0.65f,width:0.5f}
execute as @e[tag=hanger,tag=object,tag=new] run summon minecraft:interaction ^-.4 ^.2 ^-.4 {Tags:["leggings","object","click"],height:1.2f,width:0.6f}
tag @e remove new