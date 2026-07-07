scoreboard players set tabHidden gameStatus 0
tag @a remove spawned
tag @a remove reportMade
stopsound @a record
function gnosia:music/discussion-music
team modify crew nametagVisibility always
team modify engineer_claim nametagVisibility always
team modify doctor_claim nametagVisibility always
team modify guard_duty nametagVisibility always
scoreboard players set discussionTimerMax timers 1200
execute as @a[tag=crew,tag=!dead] run scoreboard players add discussionTimerMax timers 500
scoreboard players operation discussionTimer timers = discussionTimerMax timers
execute as @a unless entity @s[x=-303,y=80,z=-1621,dx=55,dy=500,dz=22] run tp @s -276.37 82.00 -1609.50 ~ ~
playsound gnosia:leviactivate player @a ~ ~ ~ 1 1 1
function gnosia:disable-bossbars
bossbar set discussion visible true
title @a title {"bold":true,"color":"blue","text":"Discussion"}
function gnosia:door-vote-closing
execute if score engineer claimStatus matches 1 run scoreboard players set engineer claimStatus 2
execute if score doctor claimStatus matches 1 run scoreboard players set doctor claimStatus 2
execute if score guardDuty claimStatus matches 1 run scoreboard players set guardDuty claimStatus 2
execute if score engineer claimStatus matches 2 if score doctor claimStatus matches 2 run scoreboard players set canLie claimStatus 0
scoreboard players set showRoleActionbar gameStatus 1
function gnosia:log/distribute_master
function gnosia:step-forward-message

execute as @a[tag=!engineer,scores={engineerID=1..}] run function gnosia:log/reports/change_gnosia_report

tellraw @a[tag=!dead,scores={engineerID=1..}] {underlined:true,color:"#187fc4",text:"Make Your Report",click_event:{action:run_command,command:"trigger makeReport set 1"}}
tellraw @a[tag=!dead,scores={doctorID=1..}] {underlined:true,color:"#8376b5",text:"Make Your Report",click_event:{action:run_command,command:"trigger makeReport set 1"}}

scoreboard players reset * votedFor