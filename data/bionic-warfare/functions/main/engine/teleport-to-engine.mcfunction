setblock 0 240 0 air

execute if entity @s[tag=player1] run setblock 0 240 0 minecraft:oak_sign{Text1:'{"selector":"@a[tag=player1]"}'}
execute if entity @s[tag=player1] run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["player1_placeholder","player_placeholder"]}
execute if entity @s[tag=player1] run tp @e[tag=player1_placeholder] @a[tag=player1,limit=1]
execute if entity @s[tag=player1] run summon armor_stand ~ ~ ~ {NoGravity:true,Tags:["player1_body","player_body"],CustomNameVisible:1b}
execute if entity @s[tag=player1] run tp @e[tag=player1_body] @a[tag=player1,limit=1]
execute if entity @s[tag=player1] run data modify entity @e[tag=player1_body,limit=1] CustomName set from block 0 240 0 Text1

execute if entity @s[tag=player2] run setblock 0 240 0 minecraft:oak_sign{Text1:'{"selector":"@a[tag=player2]"}'}
execute if entity @s[tag=player2] run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["player2_placeholder","player_placeholder"]}
execute if entity @s[tag=player2] run tp @e[tag=player2_placeholder] @a[tag=player2,limit=1]
execute if entity @s[tag=player2] run summon armor_stand ~ ~ ~ {NoGravity:true,Tags:["player2_body","player_body"],CustomNameVisible:1b}
execute if entity @s[tag=player2] run tp @e[tag=player2_body] @a[tag=player2,limit=1]
execute if entity @s[tag=player2] run data modify entity @e[tag=player2_body,limit=1] CustomName set from block 0 240 0 Text1

execute if entity @s[tag=player3] run setblock 0 240 0 minecraft:oak_sign{Text1:'{"selector":"@a[tag=player3]"}'}
execute if entity @s[tag=player3] run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["player3_placeholder","player_placeholder"]}
execute if entity @s[tag=player3] run tp @e[tag=player3_placeholder] @a[tag=player3,limit=1]
execute if entity @s[tag=player3] run summon armor_stand ~ ~ ~ {NoGravity:true,Tags:["player3_body","player_body"],CustomNameVisible:1b}
execute if entity @s[tag=player3] run tp @e[tag=player3_body] @a[tag=player3,limit=1]
execute if entity @s[tag=player3] run data modify entity @e[tag=player3_body,limit=1] CustomName set from block 0 240 0 Text1

execute if entity @s[tag=player4] run setblock 0 240 0 minecraft:oak_sign{Text1:'{"selector":"@a[tag=player4]"}'}
execute if entity @s[tag=player4] run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["player4_placeholder","player_placeholder"]}
execute if entity @s[tag=player4] run tp @e[tag=player4_placeholder] @a[tag=player4,limit=1]
execute if entity @s[tag=player4] run summon armor_stand ~ ~ ~ {NoGravity:true,Tags:["player4_body","player_body"],CustomNameVisible:1b}
execute if entity @s[tag=player4] run tp @e[tag=player4_body] @a[tag=player4,limit=1]
execute if entity @s[tag=player4] run data modify entity @e[tag=player4_body,limit=1] CustomName set from block 0 240 0 Text1

execute if entity @s[tag=player5] run setblock 0 240 0 minecraft:oak_sign{Text1:'{"selector":"@a[tag=player5]"}'}
execute if entity @s[tag=player5] run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["player5_placeholder","player_placeholder"]}
execute if entity @s[tag=player5] run tp @e[tag=player5_placeholder] @a[tag=player5,limit=1]
execute if entity @s[tag=player5] run summon armor_stand ~ ~ ~ {NoGravity:true,Tags:["player5_body","player_body"],CustomNameVisible:1b}
execute if entity @s[tag=player5] run tp @e[tag=player5_body] @a[tag=player5,limit=1]
execute if entity @s[tag=player5] run data modify entity @e[tag=player5_body,limit=1] CustomName set from block 0 240 0 Text1

execute if entity @s[tag=player6] run setblock 0 240 0 minecraft:oak_sign{Text1:'{"selector":"@a[tag=player6]"}'}
execute if entity @s[tag=player6] run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["player6_placeholder","player_placeholder"]}
execute if entity @s[tag=player6] run tp @e[tag=player6_placeholder] @a[tag=player6,limit=1]
execute if entity @s[tag=player6] run summon armor_stand ~ ~ ~ {NoGravity:true,Tags:["player6_body","player_body"],CustomNameVisible:1b}
execute if entity @s[tag=player6] run tp @e[tag=player6_body] @a[tag=player6,limit=1]
execute if entity @s[tag=player6] run data modify entity @e[tag=player6_body,limit=1] CustomName set from block 0 240 0 Text1

execute if entity @s[tag=hasReactor] run effect give @e[tag=player_body,distance=..1] glowing 1000000 1 true
execute if entity @s[tag=hasReactor] run data merge entity @e[tag=player_body,distance=..1,limit=1] {DisabledSlots:2039583,ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}},{id:"minecraft:golden_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}},{id:"minecraft:netherite_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}}]}
execute if entity @s[tag=!hasReactor] run data merge entity @e[tag=player_body,distance=..1,limit=1] {DisabledSlots:2039583,ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}},{id:"minecraft:netherite_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}}]}

forceload add ~ ~

execute if entity @s[tag=player1] run tp @e[tag=room_placeholder_1, limit=1]
execute if entity @s[tag=player2] run tp @e[tag=room_placeholder_2, limit=1]
execute if entity @s[tag=player3] run tp @e[tag=room_placeholder_3, limit=1]
execute if entity @s[tag=player4] run tp @e[tag=room_placeholder_4, limit=1]
execute if entity @s[tag=player5] run tp @e[tag=room_placeholder_5, limit=1]
execute if entity @s[tag=player6] run tp @e[tag=room_placeholder_6, limit=1]

scoreboard players set @s timeInEngine 1