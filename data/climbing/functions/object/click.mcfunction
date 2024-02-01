execute if entity @e[tag=this.interaction,tag=mask,type=interaction] run function give:oxygen_mask
execute if entity @e[tag=this.interaction,tag=chest,type=interaction] run function give:winter_chest
execute if entity @e[tag=this.interaction,tag=leggings,type=interaction] run function give:winter_leggings
execute if entity @e[tag=this.interaction,tag=boots,type=interaction] run function give:winter_boots
execute if entity @e[tag=this.interaction,tag=compass,type=interaction] run function give:compass
execute if entity @e[tag=this.interaction,tag=bottle,type=interaction] run function give:bottle
execute if entity @e[tag=this.interaction,tag=raider,type=interaction] run function climbing:util/raider/dir
execute if entity @e[tag=this.interaction,tag=waypoint,type=interaction] run function climbing:util/raider/waypoint
execute if entity @e[tag=this.interaction,tag=ice_pick,type=interaction] run function give:ice_pick
execute if entity @e[tag=this.interaction,tag=map,type=interaction] run function give:map_coordinate
execute if entity @e[tag=this.interaction,tag=ladder,type=interaction] run function give:ladder
execute if entity @e[tag=this.interaction,tag=ladder_air,type=interaction] run function climbing:object/ladder
scoreboard players set @s User.cool_item 20