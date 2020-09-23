execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:firework_rocket",tag:{Enchantments:[{}]}}}] run gamemode adventure @s
execute as @a if entity @s[nbt=!{SelectedItem:{id:"minecraft:firework_rocket",tag:{Enchantments:[{}]}}}] run gamemode survival @s

execute as @a at @s anchored eyes positioned ^ ^ ^2 if entity @e[tag=powerSource,distance=..1] run title @s actionbar {"text":"Reactor Power Source"}
execute as @a at @s anchored eyes positioned ^ ^ ^1 if entity @e[tag=powerSource,distance=..1] run title @s actionbar {"text":"Reactor Power Source"}
execute as @a at @s anchored eyes positioned ^ ^ ^2 if entity @e[tag=speedUpgrade,distance=..1] run title @s actionbar {"text":"Speed Upgrade"}
execute as @a at @s anchored eyes positioned ^ ^ ^1 if entity @e[tag=speedUpgrade,distance=..1] run title @s actionbar {"text":"Speed Upgrade"}
execute as @a at @s anchored eyes positioned ^ ^ ^2 if entity @e[tag=jumpUpgrade,distance=..1] run title @s actionbar {"text":"Jump Boost Upgrade"}
execute as @a at @s anchored eyes positioned ^ ^ ^1 if entity @e[tag=jumpUpgrade,distance=..1] run title @s actionbar {"text":"Jump Boost Upgrade"}
execute as @a at @s anchored eyes positioned ^ ^ ^2 if entity @e[tag=healingUpgrade,distance=..1] run title @s actionbar {"text":"Healing Upgrade"}
execute as @a at @s anchored eyes positioned ^ ^ ^1 if entity @e[tag=healingUpgrade,distance=..1] run title @s actionbar {"text":"Healing Upgrade"}
execute as @a at @s anchored eyes positioned ^ ^ ^2 if entity @e[tag=resistanceUpgrade,distance=..1] run title @s actionbar {"text":"Resistance Upgrade"}
execute as @a at @s anchored eyes positioned ^ ^ ^1 if entity @e[tag=resistanceUpgrade,distance=..1] run title @s actionbar {"text":"Resistance Upgrade"}

# power source - does nothing on its own
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{powerSource:1}}}] at @s run setblock ~ ~ ~ redstone_block
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{powerSource:1}}}] at @s align xyz run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["upgradeBlock","powerSource"]}
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{powerSource:1}}}] at @s run kill @s

# speed upgrade - gives speed when next to power source
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{speedUpgrade:1}}}] at @s run setblock ~ ~ ~ emerald_block
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{speedUpgrade:1}}}] at @s align xyz run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["upgradeBlock","speedUpgrade"]}
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{speedUpgrade:1}}}] at @s run kill @s

tag @e[tag=room_marker] remove hasSpeed

execute as @e[tag=speedUpgrade] at @s positioned ~1 ~ ~ if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasSpeed
execute as @e[tag=speedUpgrade] at @s positioned ~-1 ~ ~ if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasSpeed
execute as @e[tag=speedUpgrade] at @s positioned ~ ~ ~1 if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasSpeed
execute as @e[tag=speedUpgrade] at @s positioned ~ ~ ~-1 if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasSpeed
execute as @e[tag=speedUpgrade] at @s positioned ~ ~1 ~ if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasSpeed
execute as @e[tag=speedUpgrade] at @s positioned ~ ~-1 ~ if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasSpeed

# jump upgrade - gives jump boost when next to power source
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{jumpUpgrade:1}}}] at @s run setblock ~ ~ ~ slime_block
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{jumpUpgrade:1}}}] at @s align xyz run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["upgradeBlock","jumpUpgrade"]}
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{jumpUpgrade:1}}}] at @s run kill @s

tag @e[tag=room_marker] remove hasJump

execute as @e[tag=jumpUpgrade] at @s positioned ~1 ~ ~ if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasJump
execute as @e[tag=jumpUpgrade] at @s positioned ~-1 ~ ~ if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasJump
execute as @e[tag=jumpUpgrade] at @s positioned ~ ~ ~1 if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasJump
execute as @e[tag=jumpUpgrade] at @s positioned ~ ~ ~-1 if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasJump
execute as @e[tag=jumpUpgrade] at @s positioned ~ ~1 ~ if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasJump
execute as @e[tag=jumpUpgrade] at @s positioned ~ ~-1 ~ if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasJump

# healing upgrade - gives healing when next to power source
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{healingUpgrade:1}}}] at @s run setblock ~ ~ ~ gold_block
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{healingUpgrade:1}}}] at @s align xyz run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["upgradeBlock","healingUpgrade"]}
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{healingUpgrade:1}}}] at @s run kill @s

tag @e[tag=room_marker] remove hasHealing

execute as @e[tag=healingUpgrade] at @s positioned ~1 ~ ~ if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasHealing
execute as @e[tag=healingUpgrade] at @s positioned ~-1 ~ ~ if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasHealing
execute as @e[tag=healingUpgrade] at @s positioned ~ ~ ~1 if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasHealing
execute as @e[tag=healingUpgrade] at @s positioned ~ ~ ~-1 if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasHealing
execute as @e[tag=healingUpgrade] at @s positioned ~ ~1 ~ if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasHealing
execute as @e[tag=healingUpgrade] at @s positioned ~ ~-1 ~ if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasHealing

# resistance upgrade - gives resistance when next to power source
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{resistanceUpgrade:1}}}] at @s run setblock ~ ~ ~ netherite_block
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{resistanceUpgrade:1}}}] at @s align xyz run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["upgradeBlock","resistanceUpgrade"]}
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{resistanceUpgrade:1}}}] at @s run kill @s

tag @e[tag=room_marker] remove hasResistance

execute as @e[tag=resistanceUpgrade] at @s positioned ~1 ~ ~ if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasResistance
execute as @e[tag=resistanceUpgrade] at @s positioned ~-1 ~ ~ if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasResistance
execute as @e[tag=resistanceUpgrade] at @s positioned ~ ~ ~1 if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasResistance
execute as @e[tag=resistanceUpgrade] at @s positioned ~ ~ ~-1 if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasResistance
execute as @e[tag=resistanceUpgrade] at @s positioned ~ ~1 ~ if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasResistance
execute as @e[tag=resistanceUpgrade] at @s positioned ~ ~-1 ~ if entity @e[tag=powerSource,distance=..1] run tag @e[tag=room_marker,limit=1,distance=..5] add hasResistance


execute as @e[tag=upgradeBlock] at @s if block ~ ~ ~ air run kill @e[type=item,limit=1,sort=nearest]
execute as @e[tag=upgradeBlock] at @s if block ~ ~ ~ air run kill @s
