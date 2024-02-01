execute unless score !mode.delta GameHandler = !mode GameHandler run function main:mode/delta
execute if score !mode GameHandler matches 1 run function main:mode/gwr/cnt
execute if score !mode GameHandler matches 1 as @a[tag=!gwr,gamemode=!creative,gamemode=!spectator] unless score @s diedTick = @s diedTick run function main:mode/gwr/detect
execute as @a[tag=gwr] run function main:mode/gwr/main