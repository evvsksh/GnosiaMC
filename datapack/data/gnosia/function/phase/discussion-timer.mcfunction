scoreboard players set tabHidden gameStatus 0
tag @a remove spawned
stopsound @a record
function gnosia:music/discussion-music
team modify crew nametagVisibility always
team modify engineer_claim nametagVisibility always
team modify doctor_claim nametagVisibility always
team modify guard_duty nametagVisibility always
scoreboard players set discussionTimerMax timers 1200
execute as @a[tag=!dead] run scoreboard players add discussionTimerMax timers 500
scoreboard players operation discussionTimer timers = discussionTimerMax timers
execute as @a unless entity @s[x=-303,y=80,z=-1621,dx=55,dy=500,dz=22] run tp @s -276.37 82.00 -1609.50 ~ ~
playsound gnosia:leviactivate player @a ~ ~ ~ 1 1 1
function gnosia:disable-bossbars
bossbar set discussion visible true
title @a[tag=crew] title {"bold":true,"color":"blue","text":"Discussion"}
function gnosia:door-vote-closing
execute if score engineer claimStatus matches 1 run scoreboard players set engineer claimStatus 2
execute if score doctor claimStatus matches 1 run scoreboard players set doctor claimStatus 2
execute if score guardDuty claimStatus matches 1 run scoreboard players set guardDuty claimStatus 2
execute if score engineer claimStatus matches 2 if score doctor claimStatus matches 2 run scoreboard players set canLie claimStatus 0
scoreboard players set showRoleActionbar gameStatus 1
function gnosia:step-forward-message
scoreboard players reset * votedFor