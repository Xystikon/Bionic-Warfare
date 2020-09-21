scoreboard objectives add timeWithReactor dummy
scoreboard players set @a timeWithReactor 0

scoreboard objectives add inDimension dummy
scoreboard players set @a inDimension 0

scoreboard objectives add isDead deathCount
scoreboard players set @a isDead 0

scoreboard objectives add isSneaking custom:sneak_time
scoreboard players set @a isSneaking 0

scoreboard objectives add info dummy
scoreboard players set gameRunning info 0
scoreboard players set gameTime info 0
scoreboard players set playerCount info 0

scoreboard objectives add start trigger
scoreboard players add @a start 0
scoreboard players enable @a start