tag @s add this.mission
scoreboard players reset #true V
execute as @a[gamemode=!creative,gamemode=!spectator] run function climbing:mission/sub/clear with entity @e[tag=this.mission,limit=1] data.sub
tag @s remove this.mission
execute if score #true V matches 1 run function climbing:mission/success