execute store result storage climbing main.ui.thirsty int 1 run scoreboard players get @s User.thirsty
execute if score @s User.thirsty matches ..9 run function climbing:ui/thirsty_min with storage climbing main.ui
execute if score @s User.thirsty matches 10.. run function climbing:ui/thirsty_max with storage climbing main.ui