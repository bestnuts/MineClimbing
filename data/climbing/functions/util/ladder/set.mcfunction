execute if block ~ ~1 ~ air run function climbing:util/ladder/facing
execute unless block ~ ~1 ~ air run scoreboard players set #1 V 0
execute if score #0 V matches 1 run summon marker ~ ~ ~ {Tags:["ladder","new"]}
scoreboard players operation @e[tag=new] Entity.id = !id Entity.id
tag @e remove new