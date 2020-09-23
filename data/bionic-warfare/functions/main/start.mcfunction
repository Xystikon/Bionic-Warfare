# start the start timer
scoreboard players set timer startTimer 1

# reset scoreboards
scoreboard players set gameTime info 0
scoreboard players set @a credits 0

# reset tags
tag @a remove hasReactor

# clear everyone
clear @a

# clear related entities
kill @e[tag=room_marker]
kill @e[tag=room_placeholder]
kill @e[tag=player_placeholder]
kill @e[tag=player_body]

# other functions
function bionic-warfare:main/room/create

# reset start
scoreboard players set @a start 0