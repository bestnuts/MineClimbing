scoreboard players add @s User.temp_tick 1
execute if score @s ambType matches ..0 run function climbing:util/temp/out
execute if score @s ambType matches 1 run function climbing:util/temp/in