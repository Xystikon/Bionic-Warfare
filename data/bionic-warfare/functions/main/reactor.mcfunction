# if a player died, remove the tag and the reactor
execute as @a if score @s isDead matches 1.. run tag @s remove hasReactor
execute as @a if score @s isDead matches 1.. run clear @s diamond_chestplate
execute as @a if score @s isDead matches 1.. run scoreboard players set @s isDead 0

# if a player has the arc reactor, tag them
execute as @a[nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{arcReactor:1}}]}] run tag @s add hasReactor

# clear chestplates so players can't duplicate
clear @a diamond_chestplate
clear @a iron_chestplate

# if a player has reactor tag, give them the arc reactor and measure length of time they have it
execute as @a[tag=hasReactor] run replaceitem entity @s armor.chest diamond_chestplate{arcReactor:1} 1
execute as @a[tag=hasReactor] run scoreboard players add @s timeWithReactor 1

# if a player doesn't have the reactor taag, give them a normal chestplate
execute as @a[tag=!hasReactor] run replaceitem entity @s armor.chest iron_chestplate 1

# display to everyone who has the reactor.
execute if entity @a[tag=hasReactor] run title @a actionbar [{"selector":"@a[nbt={Inventory:[{id:\"minecraft:diamond_chestplate\",Slot:102b,tag:{arcReactor:1}}]}]","color":"yellow"},{"text":" has the Arc Reactor"}]
execute unless entity @a[tag=hasReactor] run title @a actionbar [{"text":"No one has the Arc Reactor"}]

# give glowing effect to whoever has the reactor
execute as @a if entity @s[tag=hasReactor] run effect give @s glowing 1 1 true
execute as @a unless entity @s[tag=hasReactor] run effect clear @s glowing

# clear all chestplates on the ground so no one can duplicate
kill @e[type=item,nbt={Item:{id:"minecraft:diamond_chestplate",Count:1b}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_chestplate",Count:1b}}]