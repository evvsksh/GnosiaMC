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
function gnosia:start-game-1
tp @e[tag=votePos] -269 37.5 -1610 0 0
execute at @e[tag=votePos] run tp @e[tag=votePos] ~ ~-20 ~
bossbar set voting visible false
bossbar set warpdrive visible false
bossbar set discussion visible false
tag @a add crew
function gnosia:remove-c-roles
schedule function gnosia:assign-c-roles 1s
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