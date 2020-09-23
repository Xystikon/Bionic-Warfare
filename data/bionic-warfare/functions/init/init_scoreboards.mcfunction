scoreboard objectives add timeWithReactor dummy
scoreboard players set @a timeWithReactor 0

scoreboard objectives add engineCooldown dummy
scoreboard players set @a engineCooldown 0

scoreboard objectives add timeInEngine dummy
scoreboard players set @a timeInEngine 0

scoreboard objectives add inDimension dummy
scoreboard players set @a inDimension 0

scoreboard objectives add credits dummy
scoreboard objectives setdisplay list credits
scoreboard players set @a credits 0

scoreboard objectives add isDead deathCount
scoreboard players set @a isDead 0

scoreboard objectives add isSneaking custom:sneak_time
scoreboard players set @a isSneaking 0

scoreboard objectives add rightClick minecraft.used:minecraft.carrot_on_a_stick
scoreboard players set @a rightClick 0

scoreboard objectives add info dummy
scoreboard players set gameRunning info 0
scoreboard players set gameTime info 0
scoreboard players set playerCount info 0

scoreboard objectives add start trigger
scoreboard players add @a start 0
scoreboard players enable @a start

scoreboard objectives add stop trigger
scoreboard players add @a stop 0
scoreboard players enable @a stop