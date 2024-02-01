data modify entity @s transformation set from storage climbing main.value.math.list
execute store result storage climbing main.value.a float 1 run data get entity @s transformation.scale[0] 100
execute as @e[tag=this.rope,type=block_display] run function climbing:object/rope/rotation with storage climbing main.value
kill @s