scoreboard players add @s User.oxygen_tick 1
execute unless score @s ambType matches 0 run function climbing:util/oxygen/in
execute if score @s ambType matches 0 if score #0 V matches ..71 run function climbing:util/oxygen/bottom
execute if score @s User.oxygen_tick matches 10.. if score @s ambType matches 0 run function climbing:util/oxygen/out