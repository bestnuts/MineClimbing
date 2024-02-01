execute if score !daytime V matches 13000.. store success score #0 V run tag @s add sleep
execute if score #0 V matches 0 run tag @s remove sleep
execute unless score !daytime V matches 13000.. run tellraw @s ["",{"text":"[시스템] ","color":"yellow"},{"text":"현재 시간에는 수면하기 적합하지 않습니다."}]