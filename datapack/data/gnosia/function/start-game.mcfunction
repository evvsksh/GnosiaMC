clear @a netherite_sword
fill -113 -9 -23 -113 -9 -31 minecraft:pearlescent_froglight[axis=z] replace
fill -184 70 -1591 -194 70 -1590 minecraft:pearlescent_froglight[axis=x] replace
fill -184 70 -1585 -197 70 -1584 minecraft:pearlescent_froglight[axis=x] replace
fill -188 67 -1594 -180 64 -1594 minecraft:pearlescent_froglight[axis=x] replace

gamerule pvp false
team modify crew friendlyFire false
team modify engineer_claim friendlyFire false
team modify doctor_claim friendlyFire false
team modify guard_duty friendlyFire false

effect clear @a
scoreboard players set win winning-conditions 0

team empty bug
team modify crew nametagVisibility never
team modify engineer_claim nametagVisibility never
team modify doctor_claim nametagVisibility never
team modify guard_duty nametagVisibility never
team modify crew color white
team modify engineer_claim color white
team modify doctor_claim color white
team modify guard_duty color white
tp @e[tag=votePos] -269 37.5 -1610 0 0
execute at @e[tag=votePos] run tp @e[tag=votePos] ~ ~-20 ~
bossbar set voting visible false
bossbar set warpdrive visible false
bossbar set discussion visible false
tag @a add crew
function gnosia:remove-c-roles
function gnosia:assign-c-roles
schedule function gnosia:bug-id 5s
schedule function gnosia:phase/clear-spawned-tag 10s
difficulty peaceful
scoreboard objectives remove playersID
scoreboard objectives add playersID dummy
scoreboard players set endScreen gameStatus 0
scoreboard players reset * votedFor
execute as @e[type=armor_stand,tag=marks] run data merge entity @s {CustomName:{"color":"aqua","text":""}}
tag @a remove cryoSleep
tag @a remove docSearch
function gnosia:disable-voicechat
function gnosia:door-vote-opening-start
tag @a remove resetanim

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