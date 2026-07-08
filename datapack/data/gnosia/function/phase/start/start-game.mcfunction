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

execute as @a unless score @s consecutiveGamesSpectated matches 1.. run scoreboard players set @s consecutiveGamesSpectated 0
execute as @a unless score @s spectatorVolunteerStorage matches 1.. run scoreboard players set @s spectatorVolunteerStorage 0
function gnosia:phase/start/determine_players
scoreboard players add @a[tag=!crew] consecutiveGamesSpectated 1
scoreboard players set @a[scores={spectatorVolunteerStorage=1}] spectatorVolunteerStorage 0

function gnosia:remove-c-roles
scoreboard players set @a[tag=crew] playersID 0
function gnosia:phase/start/assign-c-roles
function gnosia:phase/start/assign-roles
function gnosia:phase/start/set_up_player_dummies
function gnosia:phase/start/announce-roles-title

function gnosia:phase/start/bug-id
difficulty peaceful
scoreboard players set endScreen gameStatus 0
scoreboard players reset * votedFor
execute as @e[type=armor_stand,tag=marks] run data merge entity @s {CustomName:{"color":"aqua","text":""}}
tag @a remove docSearch
function gnosia:voicechat/disable
function gnosia:door-vote-opening-start
tag @a remove resetanim

function gnosia:door-vote-opening-start
function gnosia:light-vote-blue

execute store result score playersAmountStart rolesCheck if entity @a[tag=crew]
scoreboard players operation playersAmount rolesCheck = playersAmountStart rolesCheck

execute as @a[tag=crew,tag=!dead] run function gnosia:phase/random_spawn
tag @e[tag=randomSpawnTaken] remove randomSpawnTaken
gamemode adventure @a[tag=crew]
execute at @r[tag=crew,tag=!dead] run tp @a[gamemode=spectator] ~ ~2 ~ 0 0
effect give @a[tag=crew] minecraft:blindness 12 1 true

scoreboard players set day days 1
schedule function gnosia:phase/day-title 7.5s
schedule function gnosia:music/free-time-music 12s
function gnosia:sounds/ship-ambience-loop
scoreboard players operation gnosiaLeft rolesLeft = maxGnosia rolesCheck
scoreboard players operation bugLeft rolesLeft = enableBug rolesCheck
scoreboard players set humansLeft rolesLeft 0
scoreboard players set revoteAmount voteCheck 0
execute if score enableEngineer rolesCheck matches 0 run scoreboard players set engineer claimStatus 2
execute if score enableDoctor rolesCheck matches 0 run scoreboard players set doctor claimStatus 2
execute if score enableGuard rolesCheck matches 0 run scoreboard players set guardDuty claimStatus 2
execute if score engineer claimStatus matches 2 if score doctor claimStatus matches 2 run scoreboard players set canLie claimStatus 0
scoreboard players operation playersAlive rolesCheck = playersAmount rolesCheck
schedule function gnosia:voicechat/enable 3s

setblock -300 88 -1610 minecraft:air
setblock -300 88 -1610 minecraft:barrel
function gnosia:log/generate_master
function gnosia:log/generate_day
function gnosia:log/event/redacted_death
function gnosia:log/distribute_master
function gnosia:log/reports/generate/retroactive/storage
function gnosia:enforce-bossbar
