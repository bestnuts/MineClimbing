tag @s add this.mission
scoreboard players reset #true V 
execute as @e[tag=complete.mission,type=interaction] if score @s Matched.id = @e[tag=this.mission,limit=1,type=marker] Entity.id run function climbing:mission/interaction_complete
execute if score #true V matches 1 run kill @s
tag @s remove this.mission