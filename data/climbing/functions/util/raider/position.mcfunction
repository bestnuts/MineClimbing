data modify entity @s transformation set from storage climbing main.value.math.list
execute store result storage climbing main.value.b double -0.00130208 run data get entity @s transformation.scale[0]
function climbing:util/raider/place_dot with storage climbing main.value
kill @s