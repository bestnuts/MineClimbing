summon marker ~ ~ ~ {"Tags":["pool.ambient","timestamp","new"]}
scoreboard players operation @e[tag=new] Matched.id = @s User.id
scoreboard players operation @e[tag=new] timestamp = !gametime V
scoreboard players add @e[tag=new] timestamp 200
tag @e remove new