function teleport:camp_base
scoreboard players set @s User.oxygen 1260
scoreboard players set @s User.temp 367
scoreboard players set @s User.thirsty 28
scoreboard players set @s User.health 20
scoreboard players reset @s screenEffect
scoreboard players reset @s diedTick
scoreboard players reset @s waypoint.x
scoreboard players reset @s waypoint.z
scoreboard players reset @s forestStack
effect clear @s