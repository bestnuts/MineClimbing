summon marker ~ ~ ~ {Tags:["object","heli.destination","timestamp","new"]}
scoreboard players operation @e[tag=new] timestamp = !gametime V
scoreboard players add @e[tag=new] timestamp 3600
tag @e remove new