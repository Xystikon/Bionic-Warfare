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

# reset start trigger
scoreboard players set @s start 0
scoreboard players enable @s start