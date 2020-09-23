execute as @a if score @s timeInEngine matches 1.. run scoreboard players add @s timeInEngine 1
execute as @a if score @s timeInEngine matches 200 run title @s title {"text":""}
execute as @a if score @s timeInEngine matches 200 run title @s subtitle {"text":"20 Seconds Left!"}
execute as @a if score @s timeInEngine matches 400 run title @s title {"text":""}
execute as @a if score @s timeInEngine matches 400 run title @s subtitle {"text":"10 Seconds Left!"}
execute as @a if score @s timeInEngine matches 500 run title @s title {"text":""}
execute as @a if score @s timeInEngine matches 500 run title @s subtitle {"text":"5 Seconds Left!"}
execute as @a if score @s timeInEngine matches 600.. as @s run function bionic-warfare:main/engine/teleport-from-engine