$execute positioned 0.0 0.0 0.0 facing $(a) 0.0 $(b) run tp @s 0.0 0.0 0.0 ~ ~
execute store result score !arctan V run data get entity @s Rotation[0]
kill @s