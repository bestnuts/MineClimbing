execute as @a[gamemode=!creative,gamemode=!spectator,limit=1] run function give:flare_gun
summon marker 0 0 0 {Tags:["mission","enable","new"],data:{description:"밖으로 나가 플레어건을 하늘 위로 쏴주세요.",type:"timestamp",enable_run:"function climbing:mission/setup/10"}}
scoreboard players operation @e[tag=new] timestamp = !gametime V
scoreboard players add @e[tag=new] timestamp 400
tag @e remove new