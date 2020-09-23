forceload add -1 -1 1 1

kill @e[tag=room_marker]
kill @e[tag=room_placeholder]

summon armor_stand 0 200 0 {NoGravity:1b, Invisible:1b, Tags:["room_marker_1", "room_marker"], CustomNameVisible:1b, CustomName:'{"text":"Engine Room"}'}
summon armor_stand 0 180 0 {NoGravity:1b, Invisible:1b, Tags:["room_marker_2", "room_marker"], CustomNameVisible:1b, CustomName:'{"text":"Engine Room"}'}
summon armor_stand 0 160 0 {NoGravity:1b, Invisible:1b, Tags:["room_marker_3", "room_marker"], CustomNameVisible:1b, CustomName:'{"text":"Engine Room"}'}
summon armor_stand 0 140 0 {NoGravity:1b, Invisible:1b, Tags:["room_marker_4", "room_marker"], CustomNameVisible:1b, CustomName:'{"text":"Engine Room"}'}
summon armor_stand 0 120 0 {NoGravity:1b, Invisible:1b, Tags:["room_marker_5", "room_marker"], CustomNameVisible:1b, CustomName:'{"text":"Engine Room"}'}
summon armor_stand 0 100 0 {NoGravity:1b, Invisible:1b, Tags:["room_marker_6", "room_marker"], CustomNameVisible:1b, CustomName:'{"text":"Engine Room"}'}

execute at @e[tag=room_marker] as @s run function bionic-warfare:main/room/build

execute as @e[tag=room_marker] at @s run tp ~ ~-1 ~

summon armor_stand 0 200 0 {NoGravity:1b, Invisible:1b, Tags:["room_placeholder_1", "room_placeholder"]}
summon armor_stand 0 180 0 {NoGravity:1b, Invisible:1b, Tags:["room_placeholder_2", "room_placeholder"]}
summon armor_stand 0 160 0 {NoGravity:1b, Invisible:1b, Tags:["room_placeholder_3", "room_placeholder"]}
summon armor_stand 0 140 0 {NoGravity:1b, Invisible:1b, Tags:["room_placeholder_4", "room_placeholder"]}
summon armor_stand 0 120 0 {NoGravity:1b, Invisible:1b, Tags:["room_placeholder_5", "room_placeholder"]}
summon armor_stand 0 100 0 {NoGravity:1b, Invisible:1b, Tags:["room_placeholder_6", "room_placeholder"]}