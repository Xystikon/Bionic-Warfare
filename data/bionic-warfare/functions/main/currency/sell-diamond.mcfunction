execute unless entity @s[nbt={Inventory:[{id:"minecraft:diamond"}]}] run title @s actionbar {"text":"Cannot sell item. No material to sell.","color":"red"}

execute if entity @s[nbt={Inventory:[{id:"minecraft:diamond"}]}] run scoreboard players add @s credits 50
execute if entity @s[nbt={Inventory:[{id:"minecraft:diamond"}]}] run clear @s diamond 1

execute if entity @s[nbt={Inventory:[{id:"minecraft:diamond"}]}] run function bionic-warfare:main/currency/sell-diamond
