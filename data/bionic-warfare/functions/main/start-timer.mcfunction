execute if score timer startTimer matches 1.. run scoreboard players add timer startTimer 1
execute if score timer startTimer matches 2 run title @a title {"text":"Game Starting","color": "dark_green"}
execute if score timer startTimer matches 2 run title @a subtitle {"text":"in 5 seconds!"}
execute if score timer startTimer matches 20 run title @a title {"text":"Game Starting","color": "green"}
execute if score timer startTimer matches 20 run title @a subtitle {"text":"in 4 seconds!"}
execute if score timer startTimer matches 40 run title @a title {"text":"Game Starting","color": "yellow"}
execute if score timer startTimer matches 40 run title @a subtitle {"text":"in 3 seconds!"}
execute if score timer startTimer matches 60 run title @a title {"text":"Game Starting","color": "gold"}
execute if score timer startTimer matches 60 run title @a subtitle {"text":"in 2 seconds!"}
execute if score timer startTimer matches 80 run title @a title {"text":"Game Starting","color": "dark_red"}
execute if score timer startTimer matches 80 run title @a subtitle {"text":"in 1 second!"}

execute if score timer startTimer matches 100.. run function bionic-warfare:main/start-actions