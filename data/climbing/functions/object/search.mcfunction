execute as @s[tag=click,tag=!sleep] run title @a[tag=this.player] subtitle [{"text":"","color":"#4e5c24"},{"text":"클릭"}]
execute if score !daytime V matches 13000.. as @s[tag=click,tag=sleep] run title @a[tag=this.player] subtitle [{"text":"","color":"#4e5c24"},{"text":"클릭"}]