execute store result score !gametime V run time query gametime
execute store result score !daytime V run time query daytime

execute if predicate climbing:weather/clear run function climbing:util/weather/normal_wind
execute unless predicate climbing:weather/clear run function climbing:util/weather/heavy_wind

execute as @e[tag=object,tag=heli,type=marker] at @s run function climbing:object/heli/main

execute as @e[tag=click,type=interaction] at @s run function climbing:object/interaction
execute as @e[tag=avalanche,type=marker] at @s run function climbing:object/avalanche/tick
execute as @e[tag=rope,type=block_display] at @s run function climbing:object/rope/main
execute as @e[tag=mission,tag=enable,type=marker] run function climbing:mission/condition with entity @s data

execute as @e[tag=pool,type=marker] run function climbing:util/pool/search
execute as @e[tag=pool.ambient,tag=!old,type=marker] at @s run function climbing:util/ambient/forest/pool
execute as @e[tag=snow,type=marker] at @s run function climbing:util/freeze/air

execute as @e[tag=!timestamp,type=item] run function climbing:util/pool/item
execute as @e[tag=timestamp] if score @s timestamp < !gametime V run kill @s
execute unless score !daytime V matches 13000.. as @e[tag=wolf,type=wolf] run function climbing:entity/wolf/daytime

execute as @a unless score @s User.id = @s User.id store result score @s User.id run scoreboard players add !id User.id 1
execute as @a[tag=!player] run function main:join
execute as @a[scores={leave=1..}] run function main:join

scoreboard players enable @a trigger
execute as @a if score @s trigger = @s trigger unless score @s trigger matches 0 run function main:trigger/check

function main:day

function climbing:mission/bossbar

execute as @a at @s run function climbing:player
execute as @a[scores={diedTick=0..}] at @s run function main:died/tick
effect give @a saturation infinite 10 true
effect give @a regeneration infinite 10 true

function main:mode/main

execute as @e[tag=flare.launcher,type=marker] at @s run function climbing:object/flare/tick
execute as @e[tag=flare,type=marker] at @s run particle flash ~ ~ ~ 0 0 0 1 0 force

execute as @e[tag=end.wait,tag=object,type=marker] at @s run function climbing:object/end/wait
execute as @e[tag=end,tag=object,tag=main,type=marker] run function climbing:object/end/tick

data remove storage climbing main