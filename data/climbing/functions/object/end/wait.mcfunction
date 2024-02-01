execute as @a[gamemode=!creative,gamemode=!spectator] run effect give @s invisibility infinite 0 true
execute as @a[gamemode=!creative,gamemode=!spectator] at @s facing entity @e[tag=heli,limit=1,type=marker] feet positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^32 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute if score @s timestamp <= !gametime V run function summon:end_credit
execute if score @s timestamp <= !gametime V run kill @e[tag=heli]
execute if score @s timestamp <= !gametime V run kill @s