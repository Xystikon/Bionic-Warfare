
# give error if already outside
execute unless entity @e[tag=player1_placeholder] if entity @s[tag=player1] run title @s actionbar {"text":"Cannot Teleport: Already outside of Engine."}
execute unless entity @e[tag=player2_placeholder] if entity @s[tag=player2] run title @s actionbar {"text":"Cannot Teleport: Already outside of Engine."}
execute unless entity @e[tag=player3_placeholder] if entity @s[tag=player3] run title @s actionbar {"text":"Cannot Teleport: Already outside of Engine."}
execute unless entity @e[tag=player4_placeholder] if entity @s[tag=player4] run title @s actionbar {"text":"Cannot Teleport: Already outside of Engine."}
execute unless entity @e[tag=player5_placeholder] if entity @s[tag=player5] run title @s actionbar {"text":"Cannot Teleport: Already outside of Engine."}
execute unless entity @e[tag=player6_placeholder] if entity @s[tag=player6] run title @s actionbar {"text":"Cannot Teleport: Already outside of Engine."}

# save player position
execute if entity @e[tag=player1_placeholder] if entity @s[tag=player1] run tp @e[tag=room_placeholder_1] @a[tag=player1,limit=1]
execute if entity @e[tag=player2_placeholder] if entity @s[tag=player2] run tp @e[tag=room_placeholder_2] @a[tag=player2,limit=1]
execute if entity @e[tag=player3_placeholder] if entity @s[tag=player3] run tp @e[tag=room_placeholder_3] @a[tag=player3,limit=1]
execute if entity @e[tag=player4_placeholder] if entity @s[tag=player4] run tp @e[tag=room_placeholder_4] @a[tag=player4,limit=1]
execute if entity @e[tag=player5_placeholder] if entity @s[tag=player5] run tp @e[tag=room_placeholder_5] @a[tag=player5,limit=1]
execute if entity @e[tag=player6_placeholder] if entity @s[tag=player6] run tp @e[tag=room_placeholder_6] @a[tag=player6,limit=1]

# save teleport back to placeholder
execute if entity @e[tag=player1_placeholder] if entity @s[tag=player1] run tp @e[tag=player1_placeholder, limit=1]
execute if entity @e[tag=player2_placeholder] if entity @s[tag=player2] run tp @e[tag=player2_placeholder, limit=1]
execute if entity @e[tag=player3_placeholder] if entity @s[tag=player3] run tp @e[tag=player3_placeholder, limit=1]
execute if entity @e[tag=player4_placeholder] if entity @s[tag=player4] run tp @e[tag=player4_placeholder, limit=1]
execute if entity @e[tag=player5_placeholder] if entity @s[tag=player5] run tp @e[tag=player5_placeholder, limit=1]
execute if entity @e[tag=player6_placeholder] if entity @s[tag=player6] run tp @e[tag=player6_placeholder, limit=1]

# remove armor stand bodies
execute if entity @e[tag=player1_placeholder] if entity @s[tag=player1] run kill @e[tag=player1_body]
execute if entity @e[tag=player2_placeholder] if entity @s[tag=player2] run kill @e[tag=player2_body]
execute if entity @e[tag=player3_placeholder] if entity @s[tag=player3] run kill @e[tag=player3_body]
execute if entity @e[tag=player4_placeholder] if entity @s[tag=player4] run kill @e[tag=player4_body]
execute if entity @e[tag=player5_placeholder] if entity @s[tag=player5] run kill @e[tag=player5_body]
execute if entity @e[tag=player6_placeholder] if entity @s[tag=player6] run kill @e[tag=player6_body]

# remove player markers
execute if entity @e[tag=player1_placeholder] if entity @s[tag=player1] run kill @e[tag=player1_placeholder]
execute if entity @e[tag=player2_placeholder] if entity @s[tag=player2] run kill @e[tag=player2_placeholder]
execute if entity @e[tag=player3_placeholder] if entity @s[tag=player3] run kill @e[tag=player3_placeholder]
execute if entity @e[tag=player4_placeholder] if entity @s[tag=player4] run kill @e[tag=player4_placeholder]
execute if entity @e[tag=player5_placeholder] if entity @s[tag=player5] run kill @e[tag=player5_placeholder]
execute if entity @e[tag=player6_placeholder] if entity @s[tag=player6] run kill @e[tag=player6_placeholder]


forceload remove ~ ~

scoreboard players set @s timeInEngine 0