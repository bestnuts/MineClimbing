scoreboard players operation @s waypoint.x = @e[tag=this.interaction,tag=waypoint,type=interaction] waypoint.x
scoreboard players operation @s waypoint.z = @e[tag=this.interaction,tag=waypoint,type=interaction] waypoint.z
tellraw @s ["",{"text":"[표시기] ","color":"gray"},{"text":"좌표의 방향을 받아왔습니다.","color":"green"}]