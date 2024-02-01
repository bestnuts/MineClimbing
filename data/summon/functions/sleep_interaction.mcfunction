summon minecraft:interaction ~ ~ ~ {Tags:["sleep","object","click","new"],height:-1.2f,width:1.2f}
execute align xyz positioned ~.5 ~ ~.5 rotated ~ 0 run tp @e[tag=new] ~ ~ ~ ~ ~
tag @e remove new