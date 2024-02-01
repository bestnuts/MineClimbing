tag @s remove compass
tag @s remove map
scoreboard players add @s gwr.t 1
execute if score @s gwr.t matches 2.. run scoreboard players add @s gwr.f 1
execute if score @s gwr.t matches 2.. run scoreboard players set @s gwr.t 0
execute if score @s gwr.f matches 10.. run scoreboard players add @s gwr.s 1
execute if score @s gwr.f matches 10.. run scoreboard players set @s gwr.f 0
execute if score @s gwr.s matches 60.. run scoreboard players add @s gwr.m 1
execute if score @s gwr.s matches 60.. run scoreboard players set @s gwr.s 0
data modify storage climbing main.ui.gwr.s set value ""
data modify storage climbing main.ui.gwr.m set value ""
execute if score @s gwr.s matches ..9 run data modify storage climbing main.ui.gwr.s set value "0"
execute if score @s gwr.m matches ..9 run data modify storage climbing main.ui.gwr.m set value "0"
execute store result storage climbing main.value.id int 1 run scoreboard players get @s User.id
function main:mode/gwr/storage with storage climbing main.value