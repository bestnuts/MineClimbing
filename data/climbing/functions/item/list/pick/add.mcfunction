function climbing:item/list/pick/delete
execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ snow_block run function summon:pick_rope
execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ blue_candle run function climbing:item/list/pick/random