summon item_display ~ ~ ~ {Tags:["hanger","object","new"],item:{Count:1,id:"minecraft:stick",tag:{CustomModelData:4}},item_display:"head"}
execute align xyz positioned ~.5 ~ ~.5 rotated ~ 0 run tp @e[tag=new] ~ ~ ~ ~ ~
execute as @e[tag=hanger,tag=object,tag=new] run summon minecraft:interaction ^ ^-.65 ^-.5 {Tags:["chest","object","click"],height:0.8f,width:1f}
tag @e remove new