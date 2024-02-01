function climbing:util/oxygen/main
function climbing:util/temp/main
function climbing:util/thirsty/main
execute if score @s User.health matches ..19 run function climbing:util/health/main
execute if score @s User.temp matches ..360 run function climbing:util/breath/main
execute if score @s User.oxygen matches ..0 run function main:died/start
execute if score @s User.temp matches ..340 run function main:died/start
execute if score @s User.thirsty matches ..5 unless score @s User.thirsty_debuff = @s User.thirsty_debuff run function main:debuff
execute if score @s User.thirsty matches ..0 run function main:died/start
execute unless score @s User.thirsty matches ..5 run scoreboard players reset @s User.thirsty_debuff
execute unless score @s User.thirsty matches ..5 run effect clear @s blindness
execute if score @s User.point > !overload GameHandler run effect give @s slowness 1 1 true