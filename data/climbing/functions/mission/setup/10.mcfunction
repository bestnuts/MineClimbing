execute unless entity @e[tag=heli.destination,limit=1] run tellraw @a ["",{"text":"[시스템] ","color":"yellow"},{"text":"당신은 여기에 남기로 결정하였습니다."}]
execute unless entity @e[tag=heli.destination,limit=1] run function summon:end_credit
execute if entity @e[tag=heli.destination,limit=1] run function summon:heli_backhome