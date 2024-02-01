scoreboard players set !proceeding MissionProgress 5
tellraw @a ["",{"text":"[무전] ","color":"light_purple"},{"text":"현재 연결 상태가 좋지 않으므로 통신기 점검 바람"}]
summon marker 0 0 0 {Tags:["mission","enable","new"],data:{description:"통신기로 가기",type:"area",sub:{pos1:[-98,110,-408],pos2:[-82,114,-393]}}}
execute store result score @e[tag=new] Entity.id run scoreboard players add !id Entity.id 1
tag @e remove new
summon marker 0 0 0 {Tags:["mission","disable","new"],data:{type:"unknown",enable_run:"function climbing:mission/setup/06"}}
scoreboard players operation @e[tag=new] Matched.id = !id Entity.id
tag @e remove new