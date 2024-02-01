execute store result storage climbing main.value.a float 0.005 run scoreboard players operation @s fall *= #2 C
execute store result score #0 V run data get storage climbing main.value.a
scoreboard players operation @s User.health -= #0 V
execute if score @s User.health matches ..0 run function main:died/start
execute if score @s User.health matches 1.. run function climbing:util/fall/damage with storage climbing main.value