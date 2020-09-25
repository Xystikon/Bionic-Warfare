# if a player died, remove the tag and the reactor
execute as @a[tag=hasReactor] if score @s isDead matches 1.. at @s run summon item ~ ~ ~ {Item:{id:"minecraft:golden_chestplate",Count:1b,tag:{arcReactor:1}}}
execute as @a[tag=hasReactor] if score @s isDead matches 1.. run clear @s golden_chestplate
execute as @a[tag=hasReactor] if score @s isDead matches 1.. run tag @s remove hasReactor
execute as @a if score @s isDead matches 1.. run scoreboard players set @s isDead 0

# if a player has the arc reactor, tag them
execute as @a[nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{arcReactor:1}}]}] run tag @s add hasReactor

# clear chestplates so players can't duplicate
clear @a golden_chestplate
clear @a netherite_chestplate

# if a player has reactor tag, give them the arc reactor and measure length of time they have it
execute as @a[tag=hasReactor] run replaceitem entity @s armor.chest golden_chestplate{HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],arcReactor:1,display:{Name:'{"text":"Reactor","color": "light_green","italic": false}'}} 1
execute as @a[tag=hasReactor] run scoreboard players add @s timeWithReactor 1

# if a player doesn't have the reactor taag, give them a normal chestplate
execute as @a[tag=!hasReactor] run replaceitem entity @s armor.chest netherite_chestplate{HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

# display to everyone who has the reactor.
execute if entity @a[tag=hasReactor] run bossbar set bw:has-reactor name [{"selector": "@a[nbt={Inventory:[{id:\"minecraft:golden_chestplate\",Slot:102b,tag:{arcReactor:1}}]}]"}, {"text":" has the reactor."}]
execute unless entity @a[tag=hasReactor] run bossbar set bw:has-reactor name {"text":"No one has the reactor."}

# give glowing effect to whoever has the reactor
execute as @a if entity @s[tag=hasReactor] run effect give @s glowing 1 1 true
execute as @a unless entity @s[tag=hasReactor] run effect clear @s glowing

# clear all chestplates on the ground so no one can duplicate
#kill @e[type=item,nbt={Item:{id:"minecraft:golden_chestplate",Count:1b}}]
#kill @e[type=item,nbt={Item:{id:"minecraft:netherite_chestplate",Count:1b}}]