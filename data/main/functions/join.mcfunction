stopsound @s weather
scoreboard players reset @s leave
scoreboard players set @s ambTick 60
effect clear @s
execute store result score #0 V run tag @s add player
execute if score #0 V matches 1 run function main:tutorial
team join PLAY
tag @s remove sleep
tag @s remove end
gamemode adventure @s
execute unless score @s User.temp = @s User.temp run scoreboard players set @s User.temp 367
execute unless score @s User.oxygen = @s User.oxygen run scoreboard players set @s User.oxygen 1260
execute unless score @s User.thirsty = @s User.thirsty run scoreboard players set @s User.thirsty 28
execute unless score @s User.health = @s User.health run scoreboard players set @s User.health 20
scoreboard players reset @s waypoint.x
scoreboard players reset @s waypoint.z
scoreboard players reset @s area.x
scoreboard players reset @s area.y
scoreboard players reset @s area.z
scoreboard players reset @s forestStack
scoreboard players set @s bgmTick 5800
scoreboard players reset @s gwr.t
scoreboard players reset @s gwr.s
scoreboard players reset @s gwr.m
tag @s remove gwr
function teleport:camp_base
execute store result storage climbing main.value.id int 1 run scoreboard players get @s User.id
function climbing:ui/bossbar with storage climbing main.value

function main:bossbar