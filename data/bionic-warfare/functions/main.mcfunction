execute as @a if score @s start matches 1.. run function bionic-warfare:main/start
execute as @a if score @s stop matches 1.. run function bionic-warfare:main/stop

execute if score gameRunning info matches 1.. run function bionic-warfare:main/progression