scoreboard players set !proceeding MissionProgress 1
summon marker 0 0 0 {Tags:["mission","enable","new"],data:{description:"레이더 기지로 가기 ",type:"area",sub:{pos1:[-380,95,-16],pos2:[-373,100,-7]}}}
execute store result score @e[tag=new] Entity.id run scoreboard players add !id Entity.id 1
tag @e remove new
summon marker 0 0 0 {Tags:["mission","disable","new"],data:{description:"추락한 비행기 조사하기 | X -239  Z 120",type:"item",enable_run:"function climbing:mission/setup/02"}}
scoreboard players operation @e[tag=new] Matched.id = !id Entity.id
tag @e remove new