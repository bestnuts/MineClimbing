scoreboard players set @a[tag=this.player] forestStack 100
execute as @a[tag=this.player] run function climbing:util/ambient/forest/wolf
execute as @e[tag=pool.ambient,type=marker] if score @s Matched.id = @a[tag=this.player,limit=1] User.id run kill @s