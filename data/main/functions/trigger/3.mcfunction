stopsound @s weather climbing:climbing.bgm_normal
execute store result score #0 V run tag @s add bgm
execute if score #0 V matches 1 run tellraw @s ["\n",{"text":"BGM을 활성화 하셨습니다."}]
execute if score #0 V matches 1 run function main:bgm
execute if score #0 V matches 0 run tellraw @s ["\n",{"text":"BGM을 비활성화 하셨습니다."}]
execute if score #0 V matches 0 run tag @s remove bgm