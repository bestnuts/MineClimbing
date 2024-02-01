execute store result score #0 V run random value 0..3
execute unless score !wind GameHandler matches 2 run tellraw @a ["",{"text":"[안내] ","color":"red"},{"text":"현재 설산 지역의 날씨가 급격하게 변화하고 있습니다.","hoverEvent":{"action":"show_text","value":[{"text":"갑작스러운 안개, 강풍 그리고 눈발이 시작되고 있습니다.\n안전한 등산을 위해 즉시 하산하시고\n가능하면 피난소로 대피해 주시기 바랍니다."}]}}]
execute unless score !wind GameHandler matches 2 if score #0 V matches 0 run function summon:facing-camp_avalanche
execute unless score !wind GameHandler matches 2 if score #0 V matches 1 run function summon:facing-raider_avalanche
scoreboard players set !wind GameHandler 2