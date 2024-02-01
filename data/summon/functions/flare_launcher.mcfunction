playsound minecraft:entity.firework_rocket.launch block @a ~ ~ ~ 3 1
summon marker ~ ~ ~ {Tags:["flare.launcher","timestamp","new"]}
scoreboard players operation @e[tag=new] timestamp = !gametime V
scoreboard players add @e[tag=new] timestamp 60
tp @e[tag=new] ~ ~ ~ ~ ~
tag @e remove new