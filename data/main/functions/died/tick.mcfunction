tag @s add this.player
execute if score @s diedTick matches 0 run function main:died/title
scoreboard players add @s diedTick 1
execute as @e[tag=died.screen,type=marker] if score @s Matched.id = @a[tag=this.player,limit=1] User.id run tag @s add this.screen
execute as @e[tag=this.screen,type=marker,limit=1] at @s run tp @s ~ ~.05 ~ ~ 90
tp @s @e[tag=this.screen,limit=1,type=marker]
execute if score @s diedTick matches 80.. run function main:died/end
tag @e remove this.screen
tag @s remove this.player