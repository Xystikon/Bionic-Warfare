execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_ore"}]}] run title @s actionbar {"text":"Cannot sell item. No material to sell.","color":"red"}

execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_ore"}]}] run scoreboard players add @s credits 20
execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_ore"}]}] run clear @s iron_ore 1

execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_ore"}]}] run function bionic-warfare:main/currency/sell-iron-ore