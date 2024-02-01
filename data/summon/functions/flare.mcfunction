playsound entity.firework_rocket.large_blast block @a ~ ~ ~ 10 1
summon marker ~ ~ ~ {Tags:["flare","timestamp","new"]}
scoreboard players operation @e[tag=new] timestamp = !gametime V
scoreboard players add @e[tag=new] timestamp 400
tag @e remove new