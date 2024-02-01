scoreboard players set !proceeding MissionProgress 8
summon marker 0 0 0 {Tags:["mission","enable","new"],data:{description:"집으로 돌아갈 시간 · · ·",type:"timestamp",enable_run:"function climbing:mission/setup/09"}}
scoreboard players operation @e[tag=new] timestamp = !gametime V
scoreboard players add @e[tag=new] timestamp 3600
tag @e remove new