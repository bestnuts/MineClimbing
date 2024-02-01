summon marker ~ ~ ~ {Tags:["avalanche","object","timestamp","new"]}
scoreboard players operation @e[tag=new] timestamp = !gametime V
scoreboard players add @e[tag=new] timestamp 720
execute positioned -9.5 289. -63.5 rotated 0 57 run tp @e[tag=new] ~ ~ ~ ~ ~
tag @e remove new
tellraw @a ["",{"text":"[안내] ","color":"red"},{"text":"현재 설산지역 임시 캠프 방향으로 눈사태가 발생하였습니다. 즉시 대피하시길 바랍니다."}]