tag @s add this.pool
scoreboard players reset #true V
execute as @a[distance=12..] if score @s User.id = @e[tag=this.pool,limit=1,type=marker] Matched.id run tag @s add this.player
execute as @a[tag=this.player] at @s run function climbing:util/ambient/forest/detect
execute if score #true V matches 1 run function climbing:util/ambient/forest/summon
tag @s remove this.pool
tag @a remove this.player