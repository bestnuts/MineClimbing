execute unless score @s diedTick = @s diedTick store success score #0 V run fill ~ ~1 ~ ~ ~1 ~ powder_snow replace air
execute if score #0 V matches 1 run summon marker ~ ~1 ~ {Tags:["snow"]}
advancement revoke @s only climbing:temp-freeze