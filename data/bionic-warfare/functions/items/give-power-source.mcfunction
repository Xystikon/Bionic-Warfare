execute if score @s credits matches 100.. run give @s firework_rocket{powerSource:1,CanPlaceOn:["minecraft:barrier"],display:{Name:'{"text":"Reactor Power Source","color":"light_purple","italic":true}'},Enchantments:[{}]}
execute if score @s credits matches 100.. run scoreboard players remove @s credits 100

execute if score @s credits matches ..99 run title @s actionbar {"text":"Cannot buy item. Insufficient credits.","color":"red"}