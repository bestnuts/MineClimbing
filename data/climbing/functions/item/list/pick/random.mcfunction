execute store result score #0 V run random value 0..4
playsound minecraft:block.stone.break block @a ~ ~ ~ 1 2
particle block blue_candle ~ ~ ~
execute if score #0 V matches 0 run function give:ore
scoreboard players set @s User.cool_item 20