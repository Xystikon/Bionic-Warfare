# display that the game has started
title @a title {"text":"GO!"}
title @a subtitle {"text":"The game has started!"}

# give book
execute as @a run function bionic-warfare:items/give_book

# reset start timer
scoreboard players set timer startTimer 0

# start!
scoreboard players set gameRunning info 1
