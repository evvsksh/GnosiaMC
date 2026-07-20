stopsound @a record
#tp @e[tag=votePos] -269 87.5 -1610 0 0
function gnosia:music/voting-music
team modify crew color red
team modify engineer_claim color red
team modify doctor_claim color red
team modify guard_duty color red
scoreboard players set votingTimer timers 1200
scoreboard players set @e[type=armor_stand,tag=playerDummy] voteSub 0
playsound gnosia:leviactivate player @a ~ ~ ~ 1 1 1
function gnosia:disable-bossbars
bossbar set voting visible true
title @a times 0 120 40
scoreboard players set whoisthegnosia titleAnimation 0
title @a[tag=crew] title {"bold":true,"color":"red","text":"Voting"}
execute if score revoteAmount voteCheck matches 0 run function gnosia:voting/startvote
execute if score revoteAmount voteCheck matches 1.. run function gnosia:voting/start-revote
function gnosia:ship-lights/ship-light-red

clear @a[tag=!dead] player_head

#function gnosia:light-vote-red
