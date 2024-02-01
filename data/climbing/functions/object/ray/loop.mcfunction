scoreboard players add #0 V 1
execute if score #0 V matches 20.. run scoreboard players set #true V 0
execute unless block ^ ^ ^.1 #climbing:interaction_air run scoreboard players set #true V 0
execute as @e[dx=0,dy=0,dz=0,limit=1,type=interaction] run function climbing:object/ray/end
execute if score #true V = #true V run return 0
execute positioned ^ ^ ^.1 run function climbing:object/ray/loop