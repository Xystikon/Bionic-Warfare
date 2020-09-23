execute if entity @s[tag=player1] run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["player1_placeholder"]}
execute if entity @s[tag=player1] run tp @e[tag=player1_placeholder] @a[tag=player1,limit=1]
execute if entity @s[tag=player2] run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["player2_placeholder"]}
execute if entity @s[tag=player2] run tp @e[tag=player2_placeholder] @a[tag=player2,limit=1]
execute if entity @s[tag=player3] run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["player3_placeholder"]}
execute if entity @s[tag=player3] run tp @e[tag=player3_placeholder] @a[tag=player3,limit=1]
execute if entity @s[tag=player4] run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["player4_placeholder"]}
execute if entity @s[tag=player4] run tp @e[tag=player4_placeholder] @a[tag=player4,limit=1]
execute if entity @s[tag=player5] run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["player5_placeholder"]}
execute if entity @s[tag=player5] run tp @e[tag=player5_placeholder] @a[tag=player5,limit=1]
execute if entity @s[tag=player6] run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["player6_placeholder"]}
execute if entity @s[tag=player6] run tp @e[tag=player6_placeholder] @a[tag=player6,limit=1]

execute if entity @s[tag=player1] run tp @e[tag=room_placeholder_1, limit=1]
execute if entity @s[tag=player2] run tp @e[tag=room_placeholder_2, limit=1]
execute if entity @s[tag=player3] run tp @e[tag=room_placeholder_3, limit=1]
execute if entity @s[tag=player4] run tp @e[tag=room_placeholder_4, limit=1]
execute if entity @s[tag=player5] run tp @e[tag=room_placeholder_5, limit=1]
execute if entity @s[tag=player6] run tp @e[tag=room_placeholder_6, limit=1]

scoreboard players set @s timeInEngine 1