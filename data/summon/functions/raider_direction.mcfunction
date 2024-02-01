summon text_display ~ ~ ~ {Tags:["raider","dir","object","new"],billboard:"fixed",background:0,Rotation:[0F,-90F],text:'{"text":"↑","color":"green"}',brightness:{sky:15,block:15}}
execute as @e[tag=raider,tag=object,tag=new] run summon minecraft:interaction ^ ^ ^ {Tags:["raider","object","click"],height:0.1f,width:0.6f}
tp @e[tag=new] ~ ~ ~ ~ ~
tag @e remove new