execute unless entity @s[nbt={Inventory:[{id:"minecraft:gold_ore"}]}] run title @s actionbar {"text":"Cannot sell item. No material to sell.","color":"red"}

execute if entity @s[nbt={Inventory:[{id:"minecraft:gold_ore"}]}] run scoreboard players add @s credits 40
execute if entity @s[nbt={Inventory:[{id:"minecraft:gold_ore"}]}] run clear @s gold_ore 1

execute if entity @s[nbt={Inventory:[{id:"minecraft:gold_ore"}]}] run function bionic-warfare:main/currency/sell-gold-ore