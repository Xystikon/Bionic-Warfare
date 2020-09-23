execute as @a if score @s timeInEngine matches 1.. run scoreboard players add @s timeInEngine 1
execute as @a if score @s timeInEngine matches 200 run title @s title {"text":""}
execute as @a if score @s timeInEngine matches 200 run title @s subtitle {"text":"20 Seconds Left!"}
execute as @a if score @s timeInEngine matches 400 run title @s title {"text":""}
execute as @a if score @s timeInEngine matches 400 run title @s subtitle {"text":"10 Seconds Left!"}
execute as @a if score @s timeInEngine matches 500 run title @s title {"text":""}
execute as @a if score @s timeInEngine matches 500 run title @s subtitle {"text":"5 Seconds Left!"}
execute as @a if score @s timeInEngine matches 600.. as @s run function bionic-warfare:main/engine/teleport-from-engine

execute if entity @e[tag=player1_placeholder] unless entity @e[tag=player1_body] as @a[tag=player1] run title @s title {"text":"- ALERT -","color":"red"}
execute if entity @e[tag=player1_placeholder] unless entity @e[tag=player1_body] as @a[tag=player1] run title @s subtitle {"text":"> FRAME DAMAGED <","color":"yellow"}
execute if entity @e[tag=player1_placeholder] unless entity @e[tag=player1_body] at @e[tag=player1_placeholder] run kill @e[type=item,nbt={Item:{id:"minecraft:armor_stand"}},limit=1,distance=..2] 
execute if entity @e[tag=player1_placeholder] unless entity @e[tag=player1_body] run playsound minecraft:block.conduit.deactivate ambient @a ~ ~ ~ 100000 2
execute if entity @e[tag=player1_placeholder] unless entity @e[tag=player1_body] as @a[tag=player1] run function bionic-warfare:main/engine/teleport-from-engine

execute if entity @e[tag=player2_placeholder] unless entity @e[tag=player2_body] as @a[tag=player2] run title @s title {"text":"- ALERT -","color":"red"}
execute if entity @e[tag=player2_placeholder] unless entity @e[tag=player2_body] as @a[tag=player2] run title @s subtitle {"text":"> FRAME DAMAGED <","color":"yellow"}
execute if entity @e[tag=player2_placeholder] unless entity @e[tag=player2_body] at @e[tag=player1_placeholder] run kill @e[type=item,nbt={Item:{id:"minecraft:armor_stand"}},limit=1,distance=..2] 
execute if entity @e[tag=player2_placeholder] unless entity @e[tag=player2_body] run playsound minecraft:block.conduit.deactivate ambient @a ~ ~ ~ 100000 2
execute if entity @e[tag=player2_placeholder] unless entity @e[tag=player2_body] as @a[tag=player2] run function bionic-warfare:main/engine/teleport-from-engine

execute if entity @e[tag=player3_placeholder] unless entity @e[tag=player3_body] as @a[tag=player3] run title @s title {"text":"- ALERT -","color":"red"}
execute if entity @e[tag=player3_placeholder] unless entity @e[tag=player3_body] as @a[tag=player3] run title @s subtitle {"text":"> FRAME DAMAGED <","color":"yellow"}
execute if entity @e[tag=player3_placeholder] unless entity @e[tag=player3_body] at @e[tag=player1_placeholder] run kill @e[type=item,nbt={Item:{id:"minecraft:armor_stand"}},limit=1,distance=..2] 
execute if entity @e[tag=player3_placeholder] unless entity @e[tag=player3_body] run playsound minecraft:block.conduit.deactivate ambient @a ~ ~ ~ 100000 2
execute if entity @e[tag=player3_placeholder] unless entity @e[tag=player3_body] as @a[tag=player3] run function bionic-warfare:main/engine/teleport-from-engine

execute if entity @e[tag=player4_placeholder] unless entity @e[tag=player4_body] as @a[tag=player4] run title @s title {"text":"- ALERT -","color":"red"}
execute if entity @e[tag=player4_placeholder] unless entity @e[tag=player4_body] as @a[tag=player4] run title @s subtitle {"text":"> FRAME DAMAGED <","color":"yellow"}
execute if entity @e[tag=player4_placeholder] unless entity @e[tag=player4_body] at @e[tag=player1_placeholder] run kill @e[type=item,nbt={Item:{id:"minecraft:armor_stand"}},limit=1,distance=..2] 
execute if entity @e[tag=player4_placeholder] unless entity @e[tag=player4_body] run playsound minecraft:block.conduit.deactivate ambient @a ~ ~ ~ 100000 2
execute if entity @e[tag=player4_placeholder] unless entity @e[tag=player4_body] as @a[tag=player4] run function bionic-warfare:main/engine/teleport-from-engine

execute if entity @e[tag=player5_placeholder] unless entity @e[tag=player5_body] as @a[tag=player5] run title @s title {"text":"- ALERT -","color":"red"}
execute if entity @e[tag=player5_placeholder] unless entity @e[tag=player5_body] as @a[tag=player5] run title @s subtitle {"text":"> FRAME DAMAGED <","color":"yellow"}
execute if entity @e[tag=player5_placeholder] unless entity @e[tag=player5_body] at @e[tag=player1_placeholder] run kill @e[type=item,nbt={Item:{id:"minecraft:armor_stand"}},limit=1,distance=..2] 
execute if entity @e[tag=player5_placeholder] unless entity @e[tag=player5_body] run playsound minecraft:block.conduit.deactivate ambient @a ~ ~ ~ 100000 2
execute if entity @e[tag=player5_placeholder] unless entity @e[tag=player5_body] as @a[tag=player5] run function bionic-warfare:main/engine/teleport-from-engine

execute if entity @e[tag=player6_placeholder] unless entity @e[tag=player6_body] as @a[tag=player6] run title @s title {"text":"- ALERT -","color":"red"}
execute if entity @e[tag=player6_placeholder] unless entity @e[tag=player6_body] as @a[tag=player6] run title @s subtitle {"text":"> FRAME DAMAGED <","color":"yellow"}
execute if entity @e[tag=player6_placeholder] unless entity @e[tag=player6_body] at @e[tag=player1_placeholder] run kill @e[type=item,nbt={Item:{id:"minecraft:armor_stand"}},limit=1,distance=..2] 
execute if entity @e[tag=player6_placeholder] unless entity @e[tag=player6_body] run playsound minecraft:block.conduit.deactivate ambient @a ~ ~ ~ 100000 2
execute if entity @e[tag=player6_placeholder] unless entity @e[tag=player6_body] as @a[tag=player6] run function bionic-warfare:main/engine/teleport-from-engine

