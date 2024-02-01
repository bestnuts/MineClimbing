execute as @e[tag=rope,type=block_display] if score @s Matched.id = @a[tag=this.player,limit=1] User.id run kill @s
effect clear @s slow_falling