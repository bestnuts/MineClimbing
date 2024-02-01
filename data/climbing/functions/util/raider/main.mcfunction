kill @e[tag=dot,tag=object]
execute store result score #5 V run data get storage climbing raider.pos
execute if score !raider GameHandler matches 1 if score #5 V matches 1.. run function climbing:util/raider/loop