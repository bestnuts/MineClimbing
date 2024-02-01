scoreboard players reset @s ambTick
stopsound @s weather climbing:climbing.amb_heavy-wind
stopsound @s weather climbing:climbing.amb_howling-wind
execute if score @s ambType matches -1 run playsound climbing:climbing.amb_howling-wind weather @s ~ ~ ~ 1 1
execute if score !wind GameHandler matches 1 if score @s ambType matches 0 run playsound climbing:climbing.amb_heavy-wind weather @s ~ ~ ~ 1 1
execute if score !wind GameHandler matches 1 if score @s ambType matches 0 run playsound climbing:climbing.amb_heavy-wind weather @s ~ ~ ~ 1 1
execute if score !wind GameHandler matches 2 if score @s ambType matches 0 run playsound climbing:climbing.amb_heavy-wind weather @s ~ ~ ~ 2 1
execute if score !wind GameHandler matches 1 if score @s ambType matches 1 run playsound climbing:climbing.amb_heavy-wind weather @s ~ ~ ~ 0.4 0.8
execute if score !wind GameHandler matches 2 if score @s ambType matches 1 run playsound climbing:climbing.amb_heavy-wind weather @s ~ ~ ~ 1 0.8
execute if score !wind GameHandler matches 1 if score @s ambType matches 2 run playsound climbing:climbing.amb_heavy-wind weather @s ~ ~ ~ 0.7 0.85
execute if score !wind GameHandler matches 2 if score @s ambType matches 2 run playsound climbing:climbing.amb_heavy-wind weather @s ~ ~ ~ 1.2 0.85