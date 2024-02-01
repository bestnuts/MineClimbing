scoreboard players set !proceeding MissionProgress 3
tellraw @a ["",{"text":"[시스템] ","color":"yellow"},{"text":"보고 후 답이 오기까지 시간이 걸립니다."}]
summon marker 0 0 0 {Tags:["mission","enable","new"],data:{description:"구조물품 찾기 | X -48 Z -286",type:"item"}}
execute store result score @e[tag=new] Entity.id run scoreboard players add !id Entity.id 1
tag @e remove new
execute positioned -48.5 91.0 -285.5 run summon item_display ~ ~ ~ {Tags:["mission","object","new"],item:{Count:1,id:"minecraft:stick",tag:{CustomModelData:1002}},item_display:"head"}
execute positioned -48.5 91.0 -285.5 run summon interaction ~ ~ ~ {Tags:["mission","click","object","new"]}
scoreboard players operation @e[tag=new] Matched.id = !id Entity.id
execute store result score @e[tag=new] Entity.id run scoreboard players add !id Entity.id 1
tag @e remove new
summon marker 0 0 0 {Tags:["mission","disable","new"],data:{description:"보급품을 베이스 캠프로 운반 ",type:"area",sub:{pos1:[-74,41,347],pos2:[-69,45,351]}}}
scoreboard players operation @e[tag=new] Matched.id = !id Entity.id
execute store result score @e[tag=new] Entity.id run scoreboard players add !id Entity.id 1
tag @e remove new
summon marker 0 0 0 {Tags:["mission","disable","new"],data:{type:"unknown",enable_run:"function climbing:mission/setup/04"}}
scoreboard players operation @e[tag=new] Matched.id = !id Entity.id
tag @e remove new