function climbing:mission/sub/pos
scoreboard players reset #true V
scoreboard players reset #0 V
execute as @a[gamemode=!creative,gamemode=!spectator] run function climbing:mission/sub/pos_player with storage climbing main.value
execute if score #0 V = !playerAll GameHandler run function climbing:mission/success