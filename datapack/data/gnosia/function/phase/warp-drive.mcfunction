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
title @a times 30 10 30
title @a title {"text":"█","font":"gnosia:blackfade"}
schedule function gnosia:phase/warp-drive-randomtp 35t

function gnosia:log/publish_day
function gnosia:log/distribute_master

## Roles Power

# Gnosia

execute as @a[tag=gnosia,tag=!dead] run function gnosia:role-actions/gnosia_message

# Engineer

execute as @a[tag=engineer,tag=!dead] run function gnosia:role-actions/engineer_message

# Angel

execute as @a[tag=angel,tag=!dead] run function gnosia:role-actions/angel_message