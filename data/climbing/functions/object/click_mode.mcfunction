execute if entity @e[tag=this.interaction,tag=1,type=interaction] run scoreboard players set !mode GameHandler 1
execute if entity @e[tag=this.interaction,tag=2,type=interaction] run scoreboard players set !mode GameHandler 2
execute if entity @e[tag=this.interaction,tag=3,type=interaction] run scoreboard players set !mode GameHandler 3
execute if entity @e[tag=this.interaction,tag=gwr,type=interaction] run function main:mode/gwr/done