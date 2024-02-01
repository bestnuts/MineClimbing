execute unless score !daytime V matches 13000.. run tag @a remove sleep

scoreboard players set @a[tag=sleep] User.cool_item 2
execute as @a[tag=sleep] unless score @s ambType matches 1 run tag @s remove sleep

execute store result score !playerAll GameHandler if entity @a[gamemode=!creative,gamemode=!spectator]
execute store result score !playerSleep GameHandler if entity @a[gamemode=!creative,gamemode=!spectator,tag=sleep]

execute if score !playerSleep GameHandler = !playerAll GameHandler if score !playerAll GameHandler matches 1.. run time add 1s