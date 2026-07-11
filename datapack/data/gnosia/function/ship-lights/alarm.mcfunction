execute if score alarm temp matches 1 run playsound gnosia:alarm player @a ~ ~ ~ .5 1 .5
scoreboard players add alarmCount temp 1
execute if score alarm temp matches 1 run schedule function gnosia:ship-lights/alarm 1s
execute if score alarmCount temp matches 10 run schedule clear gnosia:ship-lights/alarm
execute if score alarmCount temp matches 10 run schedule function gnosia:ship-lights/ship-light-normal 1s
execute if score alarmCount temp matches 10 run scoreboard players set alarmCount temp 0