execute as @a[gamemode=!creative,gamemode=!spectator] run function climbing:end
kill @e[tag=end,type=!player]
summon marker 0 0 0 {Tags:["end","object","main","new"]}
scoreboard players operation @e[tag=new] timestamp = !gametime V
scoreboard players add @e[tag=new] timestamp 60
tag @e remove new
playsound climbing:climbing.bgm_snow_angels_right weather @a -46.5 159. -78.5 3 1
playsound climbing:climbing.bgm_snow_angels_left weather @a -33.5 159. -78.5 3 1
execute positioned -40.0 153.5 -65.01 run summon text_display ~ ~ ~ {teleport_duration:1,Tags:["end","object","title"],text:'{"text":"\\uE018"}',Rotation:[180F,0F],background:0,brightness:{block:10,sky:15}}
execute positioned -40.0 153.5 -65.02 run summon text_display ~ ~ ~ {teleport_duration:1,Tags:["end","object","title"],text:'{"text":"\\uE019"}',Rotation:[180F,0F],background:0,brightness:{block:10,sky:15}}