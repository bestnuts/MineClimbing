scoreboard players set !proceeding MissionProgress 6
summon marker 0 0 0 {Tags:["mission","enable","hide","new"],data:{type:"timestamp",enable_run:'tellraw @a ["",{"text":"[시스템] ","color":"yellow"},{"text":"통신기는 현재 전력이 부족합니다."}]'}}
scoreboard players operation @e[tag=new] timestamp = !gametime V
scoreboard players add @e[tag=new] timestamp 40
tag @e remove new
summon marker 0 0 0 {Tags:["mission","enable","hide","new"],data:{type:"timestamp",enable_run:"function climbing:mission/setup/07"}}
scoreboard players operation @e[tag=new] timestamp = !gametime V
scoreboard players add @e[tag=new] timestamp 100
tag @e remove new