# Activate WarpDrive Countdown
stopsound @a record
playsound gnosia:ost.ice-prison record @a ~ ~ ~ .2 1 .2
playsound gnosia:leviactivate player @a ~ ~ ~ 1 1 1
scoreboard players set warpdriveTimer timers 1800
#schedule function gnosia:phase/warp-drive-fade 2320
bossbar set voting visible false
bossbar set warpdrive visible true
bossbar set discussion visible false
schedule clear gnosia:music/discussion-music
schedule clear gnosia:music/voting-music
schedule clear gnosia:music/free-time-music

execute as @a[tag=crew,tag=!dead] run function gnosia:phase/random_spawn
tag @e[tag=randomSpawnTaken] remove randomSpawnTaken
tp @a[gamemode=spectator] @r[tag=crew,tag=!dead]

execute unless score engineer claimStatus matches 1.. run function gnosia:log/reports/generate/retroactive/engineer_day

function gnosia:log/distribute_master

## Roles Power

# Gnosia

execute as @a[tag=gnosia,tag=!dead] run function gnosia:role-actions/gnosia_message

# Engineer

execute as @a[tag=engineer,tag=!dead] run function gnosia:role-actions/engineer_message

# Angel

execute as @a[tag=angel,tag=!dead] run function gnosia:role-actions/angel_message

# Liars

execute as @a[tag=!engineer,scores={engineerID=1..},tag=!dead] run function gnosia:role-actions/engineer_message_fake
execute as @a[tag=!doctor,scores={doctorID=1..},tag=!dead] run function gnosia:role-actions/doctor_message_fake
