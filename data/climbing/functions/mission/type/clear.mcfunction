scoreboard players reset #true V
execute as @a[gamemode=!creative,gamemode=!spectator] run function climbing:mission/sub/clear with entity @s data.sub
execute if score #true V matches 1 run function climbing:mission/success