scoreboard players set #0 V 100
execute if predicate climbing:equip/chestplate run scoreboard players remove #0 V 30
execute if predicate climbing:equip/leggings run scoreboard players remove #0 V 40
execute if predicate climbing:equip/boots run scoreboard players remove #0 V 20
execute if score @s User.temp_tick >= #0 V run function climbing:util/temp/increase