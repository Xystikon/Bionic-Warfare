# measure time that game has been running
scoreboard players add gameTime info 1

# arc reactor chestplate
function bionic-warfare:main/reactor/item

# engine room
execute if score gameTime info matches 1 run function bionic-warfare:main/room/create
function bionic-warfare:main/engine/timings

# upgrade blocks

# upgrade effects

# currency and purchasing
function bionic-warfare:main/currency/credits