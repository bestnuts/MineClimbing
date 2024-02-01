scoreboard players reset @s User.point
execute store result score #1 V run clear @s #climbing:point{data:{score:1}} 0
execute store result score #2 V run clear @s #climbing:point{data:{score:2}} 0
execute store result score #3 V run clear @s #climbing:point{data:{score:3}} 0
scoreboard players operation #2 V *= #2 C
scoreboard players operation #3 V *= #3 C
scoreboard players operation @s User.point += #1 V
scoreboard players operation @s User.point += #2 V
scoreboard players operation @s User.point += #3 V