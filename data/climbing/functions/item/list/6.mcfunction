tag @s add this.player
execute store result score #0 V run data get entity @s Pos[1]
execute if score #0 V matches 200.. if score @s carrot_click matches 1.. run tellraw @s ["",{"text":"[시스템] ","color":"yellow"},{"text":"현재 높이에서는 발사하기 적합하지 않습니다."}]
execute if score #0 V matches ..199 if score @s carrot_click matches 1.. anchored eyes positioned ^ ^ ^1 run function climbing:item/list/flare/fire
tag @s remove this.player