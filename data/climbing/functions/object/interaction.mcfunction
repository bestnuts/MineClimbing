tag @s add this.interaction
execute on target run tag @s add this.player
execute as @s[tag=click,tag=!mission] as @a[tag=this.player] unless score @s User.cool_item = @s User.cool_item run function climbing:object/click
execute as @s[tag=click,tag=!mission] as @a[tag=this.player] if entity @e[tag=this.interaction,tag=sleep,type=interaction] run function climbing:util/sleep/condition
execute as @s[tag=click,tag=mission] if entity @a[tag=this.player] run function climbing:object/click_mission
tag @s remove this.interaction
tag @a remove this.player
data remove entity @s interaction
data remove entity @s attack