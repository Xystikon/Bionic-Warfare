execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:redstone_block",Count:1b,tag:{Enchantments:[{}]}}}] run gamemode adventure @s
execute as @a if entity @s[nbt=!{SelectedItem:{id:"minecraft:redstone_block",Count:1b,tag:{Enchantments:[{}]}}}] run gamemode survival @s

execute as @a at @s positioned ~ ~1 ~ positioned ^ ^ ^2 if block ~ ~ ~ redstone_block run title @s actionbar {"text":"Reactor Power Source"}
execute as @a at @s positioned ~ ~1 ~ positioned ^ ^ ^1 if block ~ ~ ~ redstone_block run title @s actionbar {"text":"Reactor Power Source s"}