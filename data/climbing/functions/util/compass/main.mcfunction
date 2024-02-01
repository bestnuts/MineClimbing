tag @s add this.origin

data merge storage climbing {main:{ui:{compass:[" - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "," - "]}}}
function climbing:util/compass/calc
execute store result storage climbing main.value.id int 1 run scoreboard players get @s User.id
function climbing:util/compass/bossbar with storage climbing main.value

tag @s remove this.origin