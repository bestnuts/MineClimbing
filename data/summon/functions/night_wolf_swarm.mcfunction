execute store result score #0 V run random value 0..4
execute if score #0 V matches 0.. run summon wolf ~ ~ ~ {Tags:["wolf","new"]}
execute if score #0 V matches 1.. run summon wolf ~ ~ ~ {Tags:["wolf","new"]}
execute if score #0 V matches 2.. run summon wolf ~ ~ ~ {Tags:["wolf","new"]}
execute if score #0 V matches 3.. run summon wolf ~ ~ ~ {Tags:["wolf","new"]}
execute if score #0 V matches 4.. run summon wolf ~ ~ ~ {Tags:["wolf","new"]}
$execute as @e[tag=new] run spreadplayers ~ ~ 3 16 under $(a) false @s
scoreboard players operation @e[tag=new] timestamp = !gametime V
scoreboard players add @e[tag=new] timestamp 1200
effect give @e[tag=new] speed infinite 1 true
effect give @e[tag=new] strength infinite 0 true
execute as @e[tag=new] run data modify entity @s AngryAt set from entity @a[tag=this.player,limit=1] UUID
tag @e remove new