scoreboard players add alarm temp 1
scoreboard players operation alarm temp %= two temp

execute if score alarm temp matches 1 run schedule function gnosia:ship-lights/alarm-message 3s
execute if score alarm temp matches 1 run schedule function gnosia:ship-lights/alarm 1s
execute if score alarm temp matches 0 run schedule clear gnosia:ship-lights/alarm
execute if score alarm temp matches 1 run function gnosia:ship-lights/ship-light-red
execute if score alarm temp matches 0 run function gnosia:ship-lights/ship-light-normal