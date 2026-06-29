scoreboard players set votesCasted temp 0
scoreboard players set votingTimer timers 100
tellraw @a[tag=crew] {"bold":false,"color":"aqua","text":"The voting rate is 100%"}
tellraw @a[tag=crew] {"bold":false,"color":"aqua","text":"The votes will now be tallied"}
playsound gnosia:select player @a ~ ~ ~ 1 1 1