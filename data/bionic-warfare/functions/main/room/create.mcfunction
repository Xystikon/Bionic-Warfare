forceload add 0 0

summon armor_stand 0 200 0 {NoGravity:1b, Invisible:0b, Tags:["room_marker"]}

execute at @e[tag=room_marker] as @s run function bionic-warfare:main/room/build