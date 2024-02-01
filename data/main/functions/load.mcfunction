scoreboard objectives remove V
scoreboard objectives remove C

scoreboard objectives add V dummy
scoreboard objectives add C dummy
scoreboard objectives add ambTick dummy
scoreboard objectives add ambType dummy
scoreboard objectives add ambDelta dummy
scoreboard objectives add GameHandler dummy
scoreboard objectives add MissionProgress dummy
scoreboard objectives add leave custom:leave_game
scoreboard objectives add screenEffect dummy
scoreboard objectives add screenTick dummy
scoreboard objectives add screenLoop dummy
scoreboard objectives add breathTick dummy
scoreboard objectives add diedTick dummy
scoreboard objectives add bgmTick dummy
scoreboard objectives add forestStack dummy

scoreboard objectives add timestamp dummy
scoreboard objectives add ending dummy

scoreboard objectives add carrot_click used:carrot_on_a_stick
scoreboard objectives add jump custom:jump
scoreboard objectives add fall custom:fall_one_cm
scoreboard objectives add damage custom:damage_taken

scoreboard objectives add waypoint.x dummy
scoreboard objectives add waypoint.z dummy

scoreboard objectives add area.x dummy
scoreboard objectives add area.y dummy
scoreboard objectives add area.z dummy

scoreboard objectives add User.id dummy
scoreboard objectives add User.point dummy
scoreboard objectives add User.temp dummy
scoreboard objectives add User.temp_tick dummy
scoreboard objectives add User.oxygen dummy
scoreboard objectives add User.oxygen_tick dummy
scoreboard objectives add User.thirsty dummy
scoreboard objectives add User.thirsty_debuff dummy
scoreboard objectives add User.thirsty_tick dummy
scoreboard objectives add User.cool_item dummy
scoreboard objectives add User.curr_item dummy
scoreboard objectives add User.delta_item dummy
scoreboard objectives add User.health dummy
scoreboard objectives add User.health_tick dummy
scoreboard objectives add Matched.id dummy
scoreboard objectives add Entity.id dummy

scoreboard objectives add gwr.t dummy
scoreboard objectives add gwr.f dummy
scoreboard objectives add gwr.s dummy
scoreboard objectives add gwr.m dummy

scoreboard objectives add trigger trigger

execute unless score !wind GameHandler = !wind GameHandler run scoreboard players set !wind GameHandler 1
execute unless score !overload GameHandler = !overload GameHandler run scoreboard players set !overload GameHandler 10
execute unless score !raider GameHandler = !raider GameHandler run scoreboard players set !raider GameHandler 1
execute unless score !raider.dir GameHandler = !raider.dir GameHandler run scoreboard players set !raider.dir GameHandler 0
execute unless score !mode GameHandler = !mode GameHandler run scoreboard players set !mode GameHandler 1

scoreboard players set #1000 C 1000
scoreboard players set #512 C 512
scoreboard players set #360 C 360
scoreboard players set #240 C 240
scoreboard players set #180 C 180
scoreboard players set #126 C 126
scoreboard players set #100 C 100
scoreboard players set #90 C 90
scoreboard players set #58 C 58
scoreboard players set #23 C 23
scoreboard players set #20 C 20
scoreboard players set #10 C 10
scoreboard players set #8 C 8
scoreboard players set #3 C 3
scoreboard players set #2 C 2
scoreboard players set #-1 C -1

team add PLAY
team modify PLAY collisionRule never
team modify PLAY nametagVisibility never
team modify PLAY friendlyFire false
team modify PLAY seeFriendlyInvisibles false

function main:bossbar