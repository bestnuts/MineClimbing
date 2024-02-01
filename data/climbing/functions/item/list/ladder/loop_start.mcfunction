scoreboard players reset #true V
scoreboard players add !id Entity.id 1
summon marker ~ ~ ~ {Tags:["align.rot"]}
clear @s #climbing:point{data:{item:1b,id:5}} 1
execute rotated ~180 0 positioned 0.5 0.0 0.5 positioned ^ ^ ^0.7071067932882 align xz positioned ~0.5 ~ ~0.5 facing 0.5 0.0 0.5 positioned ^0.4 ^ ^0.4 align xz facing 0.0 0.0 0.0 positioned as @s as @e[tag=align.rot] run function climbing:item/list/ladder/align
execute if score #0 V matches 1 positioned ^ ^ ^ align xyz positioned ~.5 ~ ~.5 run function climbing:item/list/ladder/loop_make
execute if score #true V matches 1 run return 0
execute if score #0 V matches 2 positioned ^ ^ ^1 align xyz positioned ~.5 ~ ~.5 run function climbing:item/list/ladder/loop_make
execute if score #true V matches 1 run return 0
execute if score #0 V matches 3 positioned ^ ^ ^2 align xyz positioned ~.5 ~ ~.5 run function climbing:item/list/ladder/loop_make