execute if score @s credits matches 100.. run give @s redstone_block{CanPlaceOn:["minecraft:barrier"],display:{Name:'{"text":"Reactor Power Source","color":"light_purple","italic":true}'},Enchantments:[{}]}
execute if score @s credits matches 100.. run scoreboard players remove @s credits 100

execute if score @s credits matches ..100 run title @s actionbar {"text":"Cannot but item. Insufficient credits.","color":"red"}