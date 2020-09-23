forceload add -1 -1 1 1

kill @e[tag=room_marker]

summon armor_stand 0 200 0 {NoGravity:1b, Invisible:0b, Tags:["room_marker_1", "room_marker"], CustomNameVisible:1b, CustomName:'{"text":"Engine Room"}'}
summon armor_stand 0 180 0 {NoGravity:1b, Invisible:0b, Tags:["room_marker_2", "room_marker"], CustomNameVisible:1b, CustomName:'{"text":"Engine Room"}'}
summon armor_stand 0 160 0 {NoGravity:1b, Invisible:0b, Tags:["room_marker_3", "room_marker"], CustomNameVisible:1b, CustomName:'{"text":"Engine Room"}'}
summon armor_stand 0 140 0 {NoGravity:1b, Invisible:0b, Tags:["room_marker_4", "room_marker"], CustomNameVisible:1b, CustomName:'{"text":"Engine Room"}'}
summon armor_stand 0 120 0 {NoGravity:1b, Invisible:0b, Tags:["room_marker_5", "room_marker"], CustomNameVisible:1b, CustomName:'{"text":"Engine Room"}'}
summon armor_stand 0 100 0 {NoGravity:1b, Invisible:0b, Tags:["room_marker_6", "room_marker"], CustomNameVisible:1b, CustomName:'{"text":"Engine Room"}'}

execute at @e[tag=room_marker] as @s run function bionic-warfare:main/room/build