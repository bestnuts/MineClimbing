tag @s remove disable
tag @s add enable
scoreboard players reset @s Matched.id
execute unless score @s Entity.id = @s Entity.id store result score @s Entity.id run scoreboard players add !id Entity.id 1
function climbing:mission/run with entity @s data