execute as @a[limit=1] run function give:flare_gun
summon marker 0 0 0 {Tags:["mission","enable","new"],data:{description:"밖으로 나가 플레어건을 하늘 위로 쏴주세요.",type:"timestamp",enable_run:"execute if entity @e[tag=heli.destination,limit=1] run function summon:heli_backhome"}}
scoreboard players operation @e[tag=new] timestamp = !gametime V
scoreboard players add @e[tag=new] timestamp 400
tag @e remove new