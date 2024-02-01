scoreboard players operation @s damage /= #10 C
scoreboard players operation @s User.health -= @s damage
execute if score @s User.health matches ..0 run function main:died/start