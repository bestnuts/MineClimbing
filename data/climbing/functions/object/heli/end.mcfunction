tag @s add clear
execute as @e[tag=heli.destination] at @s facing 0 ~40 0 positioned ~ ~10 ~ run tp ^ ^ ^100
summon marker ~ ~ ~ {Tags:["end.wait","object","new"]}
scoreboard players operation @e[tag=new] timestamp = !gametime V
scoreboard players add @e[tag=new] timestamp 100
tag @e remove new