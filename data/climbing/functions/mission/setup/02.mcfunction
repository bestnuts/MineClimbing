scoreboard players set !proceeding MissionProgress 2
execute positioned -240.5 129.875 121.5 run summon item_display ~ ~ ~ {Tags:["mission","object","new"],item:{Count:1,id:"minecraft:stick",tag:{CustomModelData:1001}},item_display:"head"}
execute positioned -240.5 129.5 121.8 run summon interaction ~ ~ ~ {Tags:["mission","click","object","new"],height:.4f}
scoreboard players operation @e[tag=new] Matched.id = !id Entity.id
execute store result score @e[tag=new] Entity.id run scoreboard players add !id Entity.id 1
tag @e remove new
summon marker 0 0 0 {Tags:["mission","disable","new"],data:{description:"레이더 기지로 돌아가 보고하기",type:"area",sub:{pos1:[-380,95,-16],pos2:[-373,100,-7]}}}
scoreboard players operation @e[tag=new] Matched.id = !id Entity.id
execute store result score @e[tag=new] Entity.id run scoreboard players add !id Entity.id 1
tag @e remove new
summon marker 0 0 0 {Tags:["mission","disable","new"],data:{type:"unknown",enable_run:"function climbing:mission/setup/03"}}
scoreboard players operation @e[tag=new] Matched.id = !id Entity.id
tag @e remove new