execute as @e[tag=mission,type=item_display] if score @s Entity.id = @e[tag=this.interaction,limit=1,type=interaction] Entity.id run kill @s
execute as @e[tag=mission,type=marker] if score @s Matched.id = @e[tag=this.interaction,limit=1,type=interaction] Entity.id run function climbing:mission/enable
tag @s add complete.mission