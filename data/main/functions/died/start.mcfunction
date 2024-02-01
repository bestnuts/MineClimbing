summon marker ~ ~ ~ {Tags:["died.screen","timestamp","new"]}
scoreboard players operation @e[tag=new] timestamp = !gametime V
scoreboard players add @e[tag=new] timestamp 81
scoreboard players operation @e[tag=new] Matched.id = @s User.id
tp @e[tag=new] ~ ~ ~ ~ 90
tag @e remove new
tag @s remove sleep
scoreboard players set @s diedTick 0
clear @s
stopsound @s weather climbing:climbing.amb_heavy-wind
stopsound @s weather climbing:climbing.amb_howling-wind
stopsound @s weather climbing:climbing.bgm_normal
playsound climbing:climbing.died block @s ~ ~ ~ 1 1
effect give @s regeneration 1 10 true
scoreboard players set @s bgmTick 5720