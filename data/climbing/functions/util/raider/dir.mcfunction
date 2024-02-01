scoreboard players add !raider.dir GameHandler 90
execute if score !raider.dir GameHandler matches 181.. run scoreboard players set !raider.dir GameHandler -90
execute as @e[tag=raider,tag=object,tag=dir] store result entity @s Rotation[0] float 1 run scoreboard players get !raider.dir GameHandler
playsound ui.button.click block @a ~ ~ ~ 1 1
function climbing:util/raider/main