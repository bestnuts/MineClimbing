execute store result entity @s transformation.scale[2] float 0.01 run data get storage climbing main.value.a
execute store result score #0 V run data get storage climbing main.value.a
execute facing entity @a[tag=this.player] feet run tp @s ~ ~ ~ ~ ~
execute if score #0 V matches 4000.. as @a[tag=this.player] at @s run function climbing:item/list/pick/delete
execute unless score #6 V < #4 V unless score #0 V matches 3000.. as @a[tag=this.player] at @s run function climbing:object/rope/player