execute unless entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run title @s actionbar {"text":"Cannot sell item. No material to sell.","color":"red"}

execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run scoreboard players add @s credits 50
execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run clear @s emerald 1

execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run function bionic-warfare:main/currency/sell-emerald