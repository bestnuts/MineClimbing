tag @s add this.heli
tellraw @a ["",{"text":"[시스템] ","color":"yellow"},{"text":"헬리콥터가 파괴되어 여기에 남기로 결정하였습니다."}]
execute as @e[tag=part.heli,type=item_display] if score @s Matched.id = @e[tag=this.heli,limit=1,type=marker] Entity.id run tag @s add this.part
particle campfire_cosy_smoke ~ ~ ~ 4 4 4 1 20 force
particle large_smoke ~ ~ ~ 4 4 4 1 20 force
playsound entity.generic.explode block @a ~ ~ ~ 4 0
kill @s
kill @e[tag=this.part]
tag @s remove this.heli
tag @e remove this.part