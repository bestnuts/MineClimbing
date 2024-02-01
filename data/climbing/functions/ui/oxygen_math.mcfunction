scoreboard players operation #0 V = @s User.oxygen
scoreboard players operation #0 V /= #10 C
scoreboard players operation #0 V *= #58 C
scoreboard players operation #0 V /= #126 C
execute if score #0 V matches 29.. run function climbing:ui/oxygen_max
execute if score #0 V matches ..28 run function climbing:ui/oxygen_min