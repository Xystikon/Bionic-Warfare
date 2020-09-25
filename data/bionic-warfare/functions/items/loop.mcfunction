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

execute as @e[tag=powerSource] at @s if block ~ ~ ~ air run kill @e[type=item,limit=1,sort=nearest]
execute as @e[tag=powerSource] at @s if block ~ ~ ~ air run setblock ~ ~ ~ redstone_block

# speed upgrade - gives speed when next to power source
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{speedUpgrade:1}}}] at @s run setblock ~ ~ ~ emerald_block
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{speedUpgrade:1}}}] at @s align xyz run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["upgradeBlock","speedUpgrade"]}
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{speedUpgrade:1}}}] at @s run kill @s

execute as @e[tag=room_marker_1] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_1 numSpeed run execute if entity @e[tag=speedUpgrade,distance=..1.3]
execute as @e[tag=room_marker_2] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_2 numSpeed run execute if entity @e[tag=speedUpgrade,distance=..1.3]
execute as @e[tag=room_marker_3] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_3 numSpeed run execute if entity @e[tag=speedUpgrade,distance=..1.3]
execute as @e[tag=room_marker_4] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_4 numSpeed run execute if entity @e[tag=speedUpgrade,distance=..1.3]
execute as @e[tag=room_marker_5] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_5 numSpeed run execute if entity @e[tag=speedUpgrade,distance=..1.3]
execute as @e[tag=room_marker_6] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_6 numSpeed run execute if entity @e[tag=speedUpgrade,distance=..1.3]

execute as @e[tag=speedUpgrade] at @s if block ~ ~ ~ air run kill @e[type=item,limit=1,sort=nearest]
execute as @e[tag=speedUpgrade] at @s if block ~ ~ ~ air run setblock ~ ~ ~ emerald_block

# jump upgrade - gives jump boost when next to power source
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{jumpUpgrade:1}}}] at @s run setblock ~ ~ ~ slime_block
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{jumpUpgrade:1}}}] at @s align xyz run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["upgradeBlock","jumpUpgrade"]}
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{jumpUpgrade:1}}}] at @s run kill @s

execute as @e[tag=room_marker_1] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_1 numJump run execute if entity @e[tag=jumpUpgrade,distance=..1.3]
execute as @e[tag=room_marker_2] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_2 numJump run execute if entity @e[tag=jumpUpgrade,distance=..1.3]
execute as @e[tag=room_marker_3] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_3 numJump run execute if entity @e[tag=jumpUpgrade,distance=..1.3]
execute as @e[tag=room_marker_4] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_4 numJump run execute if entity @e[tag=jumpUpgrade,distance=..1.3]
execute as @e[tag=room_marker_5] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_5 numJump run execute if entity @e[tag=jumpUpgrade,distance=..1.3]
execute as @e[tag=room_marker_6] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_6 numJump run execute if entity @e[tag=jumpUpgrade,distance=..1.3]

execute as @e[tag=jumpUpgrade] at @s if block ~ ~ ~ air run kill @e[type=item,limit=1,sort=nearest]
execute as @e[tag=jumpUpgrade] at @s if block ~ ~ ~ air run setblock ~ ~ ~ slime_block

# healing upgrade - gives healing when next to power source
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{healingUpgrade:1}}}] at @s run setblock ~ ~ ~ gold_block
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{healingUpgrade:1}}}] at @s align xyz run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["upgradeBlock","healingUpgrade"]}
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{healingUpgrade:1}}}] at @s run kill @s

execute as @e[tag=room_marker_1] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_1 numHealing run execute if entity @e[tag=healingUpgrade,distance=..1.3]
execute as @e[tag=room_marker_2] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_2 numHealing run execute if entity @e[tag=healingUpgrade,distance=..1.3]
execute as @e[tag=room_marker_3] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_3 numHealing run execute if entity @e[tag=healingUpgrade,distance=..1.3]
execute as @e[tag=room_marker_4] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_4 numHealing run execute if entity @e[tag=healingUpgrade,distance=..1.3]
execute as @e[tag=room_marker_5] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_5 numHealing run execute if entity @e[tag=healingUpgrade,distance=..1.3]
execute as @e[tag=room_marker_6] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_6 numHealing run execute if entity @e[tag=healingUpgrade,distance=..1.3]

execute as @e[tag=healingUpgrade] at @s if block ~ ~ ~ air run kill @e[type=item,limit=1,sort=nearest]
execute as @e[tag=healingUpgrade] at @s if block ~ ~ ~ air run setblock ~ ~ ~ gold_block

# resistance upgrade - gives resistance when next to power source
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{resistanceUpgrade:1}}}] at @s run setblock ~ ~ ~ netherite_block
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{resistanceUpgrade:1}}}] at @s align xyz run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["upgradeBlock","resistanceUpgrade"]}
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{resistanceUpgrade:1}}}] at @s run kill @s

execute as @e[tag=room_marker_1] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_1 numResistance run execute if entity @e[tag=resistanceUpgrade,distance=..1.3]
execute as @e[tag=room_marker_2] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_2 numResistance run execute if entity @e[tag=resistanceUpgrade,distance=..1.3]
execute as @e[tag=room_marker_3] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_3 numResistance run execute if entity @e[tag=resistanceUpgrade,distance=..1.3]
execute as @e[tag=room_marker_4] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_4 numResistance run execute if entity @e[tag=resistanceUpgrade,distance=..1.3]
execute as @e[tag=room_marker_5] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_5 numResistance run execute if entity @e[tag=resistanceUpgrade,distance=..1.3]
execute as @e[tag=room_marker_6] at @s at @e[tag=powerSource,distance=..3] store result score room_marker_6 numResistance run execute if entity @e[tag=resistanceUpgrade,distance=..1.3]

execute as @e[tag=resistanceUpgrade] at @s if block ~ ~ ~ air run kill @e[type=item,limit=1,sort=nearest]
execute as @e[tag=resistanceUpgrade] at @s if block ~ ~ ~ air run setblock ~ ~ ~ netherite_block
