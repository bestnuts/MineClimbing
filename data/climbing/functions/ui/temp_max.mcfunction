scoreboard players operation #0 V = @s User.temp
scoreboard players operation #0 V /= #100 C
execute store result storage climbing main.ui.temp.01 int 1 run scoreboard players get #0 V
function climbing:ui/temp_01 with storage climbing main.ui.temp

scoreboard players operation #0 V = @s User.temp
scoreboard players operation #0 V /= #10 C
scoreboard players operation #0 V %= #10 C
execute store result storage climbing main.ui.temp.02 int 1 run scoreboard players get #0 V
function climbing:ui/temp_02 with storage climbing main.ui.temp

scoreboard players operation #0 V = @s User.temp
scoreboard players operation #0 V %= #10 C
execute store result storage climbing main.ui.temp.03 int 1 run scoreboard players get #0 V
function climbing:ui/temp_03 with storage climbing main.ui.temp

data modify storage climbing main.ui.temp.04 set value '{"text":"\\uE010"}'