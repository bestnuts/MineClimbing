scoreboard players set !proceeding MissionProgress 7
tellraw @a ["",{"text":"[시스템] ","color":"yellow"},{"text":"예비전력을 활성화해 통신기를 작동시키세요."}]
summon marker 0 0 0 {Tags:["mission","enable","new"],data:{description:"예비전력 활성화하기",type:"item"}}
execute store result score @e[tag=new] Entity.id run scoreboard players add !id Entity.id 1
tag @e remove new
execute positioned -93.5 111.0 -399.5 run summon interaction ~ ~ ~ {Tags:["mission","click","object","new"]}
scoreboard players operation @e[tag=new] Matched.id = !id Entity.id
execute store result score @e[tag=new] Entity.id run scoreboard players add !id Entity.id 1
tag @e remove new
summon marker 0 0 0 {Tags:["mission","disable","new"],data:{description:"레이더 기지로 돌아가 보고하기",type:"area",sub:{pos1:[-380,95,-16],pos2:[-373,100,-7]}}}
scoreboard players operation @e[tag=new] Matched.id = !id Entity.id
execute store result score @e[tag=new] Entity.id run scoreboard players add !id Entity.id 1
tag @e remove new
summon marker 0 0 0 {Tags:["mission","disable","new"],data:{description:"협곡으로 내려가 희귀광맥 획득하기",type:"clear",sub:{id:1},enable_run:'tellraw @a ["",{"text":"[시스템] ","color":"yellow"},{"text":"협곡으로 내려가기 위해선 사다리와 곡괭이가 필요합니다."}]'}}
scoreboard players operation @e[tag=new] Matched.id = !id Entity.id
execute store result score @e[tag=new] Entity.id run scoreboard players add !id Entity.id 1
tag @e remove new
summon marker 0 0 0 {Tags:["mission","disable","new"],data:{description:"레이더 기지로 돌아가 보고하기",type:"area",sub:{pos1:[-380,95,-16],pos2:[-373,100,-7]}}}
scoreboard players operation @e[tag=new] Matched.id = !id Entity.id
execute store result score @e[tag=new] Entity.id run scoreboard players add !id Entity.id 1
tag @e remove new
summon marker 0 0 0 {Tags:["mission","disable","new"],data:{type:"unknown",enable_run:"function climbing:mission/setup/08"}}
scoreboard players operation @e[tag=new] Matched.id = !id Entity.id
tag @e remove new