scoreboard players set #true V 1
function climbing:util/ladder/facing
execute if score #0 V matches 1 run summon marker ~ ~ ~ {Tags:["ladder","new"]}
execute if score #0 V matches 1 rotated 0 0 run summon interaction ^ ^.5 ^ {Tags:["ladder_air","object","click","new"],height:1f,width:1f}
scoreboard players operation @e[tag=new] Entity.id = !id Entity.id
tag @e remove new