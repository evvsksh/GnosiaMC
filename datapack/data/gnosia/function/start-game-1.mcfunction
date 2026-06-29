function gnosia:remove-all-roles
function gnosia:door-vote-opening-start
function gnosia:light-vote-blue
scoreboard players set playersAmount rolesCheck 0
scoreboard players set playersAmountStart rolesCheck 0
execute as @a[tag=crew] run scoreboard players add playersAmount rolesCheck 1
execute as @a[tag=crew] run scoreboard players add playersAmountStart rolesCheck 1

scoreboard players set .spawnSequence delay 15
effect give @a[tag=crew] minecraft:blindness 12 1 true

scoreboard players set day days 1
schedule function gnosia:phase/day-title 7.5s
schedule function gnosia:music/free-time-music 12s
function gnosia:sounds/ship-ambience-loop
gamemode adventure @a
scoreboard players operation gnosiaLeft rolesLeft = maxGnosia rolesCheck
scoreboard players operation bugLeft rolesLeft = enableBug rolesCheck
scoreboard players operation playersAlive rolesCheck = playersAmount rolesCheck
scoreboard players set humansLeft rolesLeft 0
scoreboard players set revoteAmount voteCheck 0
schedule function gnosia:assign-roles 2t
#schedule function gnosia:phase/discussion-start 30s
scoreboard players operation playersAlive rolesCheck = playersAmount rolesCheck
schedule function gnosia:enable-voicechat 3s
schedule function gnosia:remove-placeholderstands 5s
schedule function gnosia:ship-lights/alarm-toggle 30s
