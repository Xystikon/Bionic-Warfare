execute as @a[nbt={Inventory:[{id:"minecraft:coal"}]}] run scoreboard players add @s credits 10
execute as @a[nbt={Inventory:[{id:"minecraft:iron_ore"}]}] run scoreboard players add @s credits 20
execute as @a[nbt={Inventory:[{id:"minecraft:gold_ore"}]}] run scoreboard players add @s credits 40
execute as @a[nbt={Inventory:[{id:"minecraft:diamond"}]}] run scoreboard players add @s credits 50
execute as @a[nbt={Inventory:[{id:"minecraft:emerald"}]}] run scoreboard players add @s credits 50

clear @a coal
clear @a iron_ore
clear @a gold_ore
clear @a diamond
clear @a emerald