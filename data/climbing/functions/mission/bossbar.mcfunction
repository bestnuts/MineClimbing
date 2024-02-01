execute as @e[tag=mission,tag=enable,tag=!hide,sort=arbitrary,limit=2,type=marker] run data modify storage climbing main.ui.mission append from entity @s data.description
execute store result score #0 V run data get storage climbing main.ui.mission
bossbar set mission:1 name ""
bossbar set mission:2 name ""
execute if score #0 V matches 1 run bossbar set mission:1 name {"nbt":"main.ui.mission[0]","storage":"climbing"}
execute if score #0 V matches 2 run bossbar set mission:2 name {"nbt":"main.ui.mission[1]","storage":"climbing"}