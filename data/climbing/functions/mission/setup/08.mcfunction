scoreboard players set !proceeding MissionProgress 8
summon marker 0 0 0 {Tags:["mission","enable","hide","new"],data:{type:"timestamp",enable_run:'tellraw @a ["",{"text":"[시스템] ","color":"yellow"},{"text":"헬리콥터가 오고 있습니다. 기다려주세요."}]'}}
scoreboard players operation @e[tag=new] timestamp = !gametime V
scoreboard players add @e[tag=new] timestamp 20
tag @e remove new
summon marker 0 0 0 {Tags:["mission","enable","new"],data:{description:"집으로 돌아갈 시간 · · ·",type:"timestamp",enable_run:"function climbing:mission/setup/09"}}
scoreboard players operation @e[tag=new] timestamp = !gametime V
scoreboard players add @e[tag=new] timestamp 1200
tag @e remove new