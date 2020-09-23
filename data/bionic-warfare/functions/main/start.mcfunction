# display that the game has started
title @a title {"text":"Game Starting!"}

# reset scoreboards
scoreboard players set gameTime info 0
scoreboard players set gameRunning info 1
scoreboard players set @a credits 0

# reset tags
tag @a remove hasReactor

# clear everyone
clear @a

# clear related entities
kill @e[tag=room_marker]
kill @e[tag=room_placeholder]
kill @e[tag=player_placeholder]

# give book
execute as @a run function bionic-warfare:items/give_book

# other functions
function bionic-warfare:main/room/create

# reset start trigger
scoreboard players set @s start 0
scoreboard players enable @s start