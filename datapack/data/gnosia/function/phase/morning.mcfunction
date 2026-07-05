# Teleport everyone back (it does spawning again but this should change with the addition of rooms)
execute if score gnosiaLeft rolesLeft >= humansLeft rolesLeft run scoreboard players set win winning-conditions 1
execute if score gnosiaLeft rolesLeft >= humansLeft rolesLeft if score bugLeft rolesLeft matches 0.. run schedule function gnosia:phase/winning-conditions-night/gnosia-win-night 5s
execute if score gnosiaLeft rolesLeft >= humansLeft rolesLeft if score bugLeft rolesLeft matches 1.. run schedule function gnosia:phase/winning-conditions-night/bug-win-night 5s

title @a times 0 30 5
title @a[tag=!deathReport] title {"text":"█","font":"gnosia:blackfade",color:black}
title @a[tag=deathReport] title {"text":"█","font":"gnosia:blackfade",color:dark_red}
schedule function gnosia:phase/day-title 3s
tag @a remove warpdrive
team modify crew nametagVisibility never
team modify engineer_claim nametagVisibility never
team modify doctor_claim nametagVisibility never
team modify guard_duty nametagVisibility never
scoreboard players add day days 1
execute as @a[tag=crew,tag=!dead] run function gnosia:phase/random_spawn
tag @e[tag=randomSpawnTaken] remove randomSpawnTaken
gamemode adventure @a[tag=crew,tag=!dead]
tp @a[gamemode=spectator] @r[tag=crew,tag=!dead]
effect give @a[tag=crew,tag=!dead] minecraft:blindness 2 1 true

function gnosia:log/generate_day
execute as @a[tag=c1,tag=deathReport] run function gnosia:log/event/death
execute as @a[tag=c2,tag=deathReport] run function gnosia:log/event/death
execute as @a[tag=c3,tag=deathReport] run function gnosia:log/event/death
execute as @a[tag=c4,tag=deathReport] run function gnosia:log/event/death
execute as @a[tag=c5,tag=deathReport] run function gnosia:log/event/death
execute as @a[tag=c6,tag=deathReport] run function gnosia:log/event/death
execute as @a[tag=c7,tag=deathReport] run function gnosia:log/event/death
execute as @a[tag=c8,tag=deathReport] run function gnosia:log/event/death
execute as @a[tag=c9,tag=deathReport] run function gnosia:log/event/death
execute as @a[tag=c10,tag=deathReport] run function gnosia:log/event/death
execute as @a[tag=c11,tag=deathReport] run function gnosia:log/event/death
execute as @a[tag=c12,tag=deathReport] run function gnosia:log/event/death
execute as @a[tag=c13,tag=deathReport] run function gnosia:log/event/death
execute as @a[tag=c14,tag=deathReport] run function gnosia:log/event/death
execute as @a[tag=c15,tag=deathReport] run function gnosia:log/event/death
execute unless entity @a[tag=deathReport] run function gnosia:log/event/no_death

tag @a[tag=deathReport] remove deathReport

# Engineer Check

function gnosia:engineer-result

# Doctor Check

function gnosia:doctor-result

tag @a remove cryoVote

function gnosia:enable-voicechat
scoreboard players set tabHidden gameStatus 1

schedule clear gnosia:phase/discussion-timer
execute unless score win winning-conditions matches 1 run schedule function gnosia:phase/discussion-start 10s