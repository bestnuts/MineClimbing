execute as @e[tag=ladder,type=marker] if score @s Entity.id = @e[tag=this.interaction,limit=1,type=interaction] Entity.id at @s run function climbing:util/ladder/air
kill @e[tag=this.interaction,type=interaction]
function give:ladder