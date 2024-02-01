particle dust 1 0 0 10 ~ ~ ~ 0 0 0 1 0 force
execute rotated ~ ~.05 if block ^ ^ ^1 #climbing:interaction_air if block ^ ^ ^2 #climbing:interaction_air run tp @s ^ ^ ^2 ~ ~
execute if score @s timestamp = !gametime V run function climbing:object/flare/backhome