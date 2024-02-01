scoreboard players operation !mode.delta GameHandler = !mode GameHandler
execute as @a[tag=gwr] run function main:mode/gwr/reset
function fix:init_mission
execute if score !mode GameHandler matches 1 run tellraw @a ["",{"text":"[시스템] ","color":"yellow"},{"text":"기네스 모드입니다."}]
execute if score !mode GameHandler matches 1 run tellraw @a ["",{"text":"[시스템] ","color":"yellow"},{"text":"이벤트 없이 오직 등산 시간만을 측정합니다. (혼자서 진행하세요)"}]
execute if score !mode GameHandler matches 2 run tellraw @a ["",{"text":"[시스템] ","color":"yellow"},{"text":"임무 모드입니다. 임무를 진행하여 엔딩을 보시면 됩니다."}]
execute if score !mode GameHandler matches 2 run function fix:basic_mission
execute if score !mode GameHandler matches 3 run tellraw @a ["",{"text":"[시스템] ","color":"yellow"},{"text":"셰르파 모드입니다. 여유롭게 구경하시면 됩니다."}]