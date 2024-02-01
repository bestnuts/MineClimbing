execute if score !rot V matches -180 store success score #0 V run fill ~ ~ ~ ~ ~ ~ ladder[facing=south] replace air
execute if score !rot V matches -1 store success score #0 V run fill ~ ~ ~ ~ ~ ~ ladder[facing=north] replace air
execute if score !rot V matches -90 store success score #0 V run fill ~ ~ ~ ~ ~ ~ ladder[facing=west] replace air
execute if score !rot V matches 89 store success score #0 V run fill ~ ~ ~ ~ ~ ~ ladder[facing=east] replace air