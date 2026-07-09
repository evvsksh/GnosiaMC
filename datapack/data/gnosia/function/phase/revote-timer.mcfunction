
tag @a remove spawned
stopsound @a record
schedule function gnosia:music/discussion-music 3s
team modify crew nametagVisibility always
team modify engineer_claim nametagVisibility always
team modify doctor_claim nametagVisibility always
team modify guard_duty nametagVisibility always
scoreboard players set revoteTimer timers 1260

execute as @a unless entity @s[x=-303,y=80,z=-1621,dx=55,dy=500,dz=22] run tp @s -276.37 82.00 -1609.50 ~ ~

function gnosia:disable-bossbars
bossbar set revote visible true

scoreboard players set showRoleActionbar gameStatus 1
