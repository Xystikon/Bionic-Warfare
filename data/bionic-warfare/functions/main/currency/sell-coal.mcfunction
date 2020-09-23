execute unless entity @s[nbt={Inventory:[{id:"minecraft:coal"}]}] run title @s actionbar {"text":"Cannot sell item. No material to sell.","color":"red"}

execute if entity @s[nbt={Inventory:[{id:"minecraft:coal"}]}] run scoreboard players add @s credits 10
execute if entity @s[nbt={Inventory:[{id:"minecraft:coal"}]}] run clear @s coal 1

execute if entity @s[nbt={Inventory:[{id:"minecraft:coal"}]}] run function bionic-warfare:main/currency/sell-coal