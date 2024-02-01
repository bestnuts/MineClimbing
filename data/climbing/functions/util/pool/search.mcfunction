tag @s add this.pool
scoreboard players set #true V 1
execute as @a if score @s User.id = @e[tag=this.pool,limit=1,type=marker] Matched.id run scoreboard players reset #true V
execute store result storage climbing main.value.id int 1 run scoreboard players get @s Matched.id
execute if score #true V matches 1 run function climbing:util/pool/clear with storage climbing main.value
kill @s