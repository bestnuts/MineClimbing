tag @s add this.mission
execute as @e[tag=mission,type=marker] if score @s Matched.id = @e[tag=this.mission,limit=1] Entity.id run function climbing:mission/enable
tag @s remove this.mission
kill @s