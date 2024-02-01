execute if score @s screenTick matches 1 run tp @s ~ ~ ~ ~1 ~
execute if score @s screenTick matches 2 run tp @s ~ ~ ~ ~ ~2
execute if score @s screenTick matches 3 run tp @s ~ ~ ~ ~-1 ~-1
execute if score @s screenTick matches 4 run tp @s ~ ~ ~ ~1 ~-1
execute if score @s screenTick matches 5 run tp @s ~ ~ ~ ~-1 ~
execute if score @s screenTick matches 5.. run function climbing:util/screen/reset