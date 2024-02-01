particle minecraft:explosion_emitter ~ ~ ~ 0 1 0 1 2 force
particle cloud ~ ~ ~ 0 0 0 1 5 force
execute as @a[distance=..32,gamemode=!creative,gamemode=!spectator] run function climbing:object/avalanche/screen
execute as @a[distance=..10,gamemode=!creative,gamemode=!spectator] unless score @s diedTick = @s diedTick run function main:died/start