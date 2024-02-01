scoreboard players set !proceeding MissionProgress 4
summon marker 0 0 0 {Tags:["mission","enable","hide","new"],data:{type:"timestamp",enable_run:'tellraw @a ["",{"text":"[무전] ","color":"light_purple"},{"text":"신호 응답 · · ·"}]'}}
scoreboard players operation @e[tag=new] timestamp = !gametime V
scoreboard players add @e[tag=new] timestamp 50
tag @e remove new
summon marker 0 0 0 {Tags:["mission","enable","hide","new"],data:{type:"timestamp",enable_run:"function climbing:mission/setup/05"}}
scoreboard players operation @e[tag=new] timestamp = !gametime V
scoreboard players add @e[tag=new] timestamp 200
tag @e remove new