execute if entity @s[tag=player1] run tp @e[tag=player1_placeholder, limit=1]
execute if entity @s[tag=player2] run tp @e[tag=player2_placeholder, limit=1]
execute if entity @s[tag=player3] run tp @e[tag=player3_placeholder, limit=1]
execute if entity @s[tag=player4] run tp @e[tag=player4_placeholder, limit=1]
execute if entity @s[tag=player5] run tp @e[tag=player5_placeholder, limit=1]
execute if entity @s[tag=player6] run tp @e[tag=player6_placeholder, limit=1]

execute if entity @s[tag=player1] run kill @e[tag=player1_placeholder]
execute if entity @s[tag=player2] run kill @e[tag=player2_placeholder]
execute if entity @s[tag=player3] run kill @e[tag=player3_placeholder]
execute if entity @s[tag=player4] run kill @e[tag=player4_placeholder]
execute if entity @s[tag=player5] run kill @e[tag=player5_placeholder]
execute if entity @s[tag=player6] run kill @e[tag=player6_placeholder]

scoreboard players set @s timeInEngine 0