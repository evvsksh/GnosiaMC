function gnosia:remove-all-roles
function gnosia:door-vote-opening-start
function gnosia:light-vote-blue
scoreboard players set playersAmount rolesCheck 0
scoreboard players set playersAmountStart rolesCheck 0
execute as @a[tag=crew] run scoreboard players add playersAmount rolesCheck 1
execute as @a[tag=crew] run scoreboard players add playersAmountStart rolesCheck 1

scoreboard players set .spawnSequence delay 16
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
function gnosia:assign-roles
execute if score enableEngineer rolesCheck matches 0 run scoreboard players set engineer claimStatus 2
execute if score enableDoctor rolesCheck matches 0 run scoreboard players set doctor claimStatus 2
execute if score enableGuard rolesCheck matches 0 run scoreboard players set guardDuty claimStatus 2
execute if score engineer claimStatus matches 2 if score doctor claimStatus matches 2 run scoreboard players set canLie claimStatus 0
#schedule function gnosia:phase/discussion-start 30s
scoreboard players operation playersAlive rolesCheck = playersAmount rolesCheck
schedule function gnosia:enable-voicechat 3s
schedule function gnosia:remove-placeholderstands 5s
#schedule function gnosia:ship-lights/alarm-toggle 30s

setblock -300 88 -1610 minecraft:air
setblock -300 88 -1610 minecraft:barrel
function gnosia:log/generate_master
function gnosia:log/generate_day
function gnosia:log/event/redacted_death
function gnosia:log/distribute_master
function gnosia:log/reports/generate/retroactive/storage