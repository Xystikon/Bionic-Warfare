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

scoreboard objectives remove numSpeed
scoreboard objectives remove numJump
scoreboard objectives remove numHealing
scoreboard objectives remove numResistance

scoreboard objectives add numSpeed dummy
scoreboard objectives add numJump dummy
scoreboard objectives add numHealing dummy
scoreboard objectives add numResistance dummy

# info
scoreboard objectives add info dummy
scoreboard players set gameRunning info 0
scoreboard players set gameTime info 0
scoreboard players set playerCount info 0

scoreboard players set totalReactorTime info 10000
scoreboard players set borderStartingSize info 1000
scoreboard players set borderCloseTime info 1000

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