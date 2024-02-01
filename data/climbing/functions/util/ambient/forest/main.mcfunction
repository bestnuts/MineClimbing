execute if score @s forestStack matches 3.. run return 1
scoreboard players reset #0 V
execute as @e[tag=pool.ambient,type=marker] if score @s Matched.id = @a[tag=this.player,limit=1] User.id run scoreboard players add #0 V 1
execute if score #0 V matches 3.. run return 1
return 0