# measure time that game has been running
scoreboard players add gameTime info 1

# arc reactor chestplate
function bionic-warfare:main/reactor

# engine room

# upgrade blocks

# upgrade effects

# currency and purchasing
function bionic-warfare:main/credits

execute as @a if score @s rightClick matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{shopItem:1}}}] run function bionic-warfare:items/shop_item
execute as @a if score @s rightClick matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{engineItem:1}}}] run function bionic-warfare:items/engine_item