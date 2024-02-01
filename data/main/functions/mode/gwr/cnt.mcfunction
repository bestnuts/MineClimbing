time set 11500
weather clear
execute store result score #0 V if entity @a
execute if score #0 V matches 2.. run tellraw @a ["",{"text":"[시스템] ","color":"yellow"},{"text":"기네스 모드는 혼자서 진행해야 합니다. 강제로 셰르파 모드로 변경합니다."}]
execute if score #0 V matches 2.. as @a[tag=gwr] run function main:mode/gwr/reset
execute if score #0 V matches 2.. run scoreboard players set !mode GameHandler 3