execute if score @s timestamp = !gametime V positioned -41.0 153.0 -65.01 run summon text_display ~ ~ ~ {Tags:["end","object","text"],text:'{"text":"제작: 베스트견과류"}',Rotation:[180F,0F],background:0,brightness:{block:10,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,1f]}}
execute if score @s timestamp = !gametime V run scoreboard players add @s timestamp 60
execute as @e[tag=end,tag=object,tag=text] at @s run tp @s ~ ~.0125 ~