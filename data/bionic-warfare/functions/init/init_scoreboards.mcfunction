# timers
scoreboard objectives add timeWithReactor dummy
scoreboard players set @a timeWithReactor 0

scoreboard objectives add engineCooldown dummy
scoreboard players set @a engineCooldown 0

scoreboard objectives add timeInEngine dummy
scoreboard players set @a timeInEngine 0

scoreboard objectives add startTimer dummy
scoreboard players set timer startTimer 0

# dummies
scoreboard objectives add credits dummy
scoreboard objectives setdisplay sidebar credits
scoreboard players set @a credits 0

# stats
scoreboard objectives add isDead deathCount
scoreboard players set @a isDead 0

scoreboard objectives add deaths deathCount
scoreboard players set @a deaths 0
scoreboard objectives setdisplay list deaths

scoreboard objectives add rightClick minecraft.used:minecraft.carrot_on_a_stick
scoreboard players set @a rightClick 0

# info
scoreboard objectives add info dummy
scoreboard players set gameRunning info 0
scoreboard players set gameTime info 0
scoreboard players set playerCount info 0

# reactor bossbar
bossbar add bw:has-reactor {"text":"No one has the reactor"}
bossbar set bw:has-reactor players @a
bossbar set bw:has-reactor style notched_10
bossbar set bw:has-reactor color blue

# triggers
scoreboard objectives add start trigger
scoreboard players add @a start 0
scoreboard players enable @a start

scoreboard objectives add stop trigger
scoreboard players add @a stop 0
scoreboard players enable @a stop