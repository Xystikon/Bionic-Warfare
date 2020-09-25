# redo scoreboards
scoreboard objectives remove numSpeed
scoreboard objectives remove numJump
scoreboard objectives remove numHealing
scoreboard objectives remove numResistance

scoreboard objectives add numSpeed dummy
scoreboard objectives add numJump dummy
scoreboard objectives add numHealing dummy
scoreboard objectives add numResistance dummy

# set bossbar max
execute store result bossbar bw:has-reactor max run scoreboard players get totalReactorTime info
bossbar set bw:has-reactor value 0

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
kill @e[tag=upgradeBlock]

# create rooms
function bionic-warfare:main/room/create

# reset start
scoreboard players set @a start 0