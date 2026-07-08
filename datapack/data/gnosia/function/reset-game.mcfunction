stopsound @a
scoreboard players set votesCasted temp 0
clear @a
gamemode adventure @a
#playsound gnosia:loop player @a ~ ~ ~ 1 1 1
scoreboard players set win winning-conditions 0
title @a times 10 167 3
title @a title {"text":"█","font":"gnosia:blackfade",color:black}
#schedule function gnosia:start-game 167
tag @a add resetanim
function gnosia:reset-animation
schedule clear gnosia:music/discussion-music
schedule clear gnosia:music/voting-music
schedule clear gnosia:music/free-time-music
schedule clear gnosia:phase/voting-timer
schedule clear gnosia:phase/tp-to-cryosleep
schedule clear gnosia:voting/start-revote-cryo
schedule clear gnosia:voting/start-revote
schedule clear gnosia:phase/warp-drive
team leave @a
team add crew
team join crew @a
gamerule pvp false
team modify crew friendlyFire false
team modify engineer_claim friendlyFire false
team modify doctor_claim friendlyFire false
team modify guard_duty friendlyFire false
team modify crew nametagVisibility never
team modify engineer_claim nametagVisibility never
team modify doctor_claim nametagVisibility never
team modify guard_duty nametagVisibility never
team modify crew color white
team modify engineer_claim color white
team modify doctor_claim color white
team modify guard_duty color white
scoreboard players set voteCheck voteCheck 0
scoreboard players set votesCasted temp 0
scoreboard players set @a vote 0
scoreboard players set @a voteSub 0
scoreboard players set angelSave gnosiaKillChoose 0
scoreboard players set engSearch gnosiaKillChoose 0
scoreboard players set gnosiaKillChoose gnosiaKillChoose 0
scoreboard players set endScreen gameStatus 0
scoreboard players set engineer claimStatus 0
scoreboard players set doctor claimStatus 0
scoreboard players set guardDuty claimStatus 0
scoreboard players set canLie claimStatus 1
kill @e[tag=Marks]
kill @e[tag=playerDummy]
scoreboard players set tabHidden gameStatus 1
tag @a remove gnosiaElimination
tag @a remove cryoSleep
tag @a remove cantClaim
tag @a remove crew
xp set @a 0 levels
xp set @a 0 points
scoreboard players set gameStarted gameStatus 1
function gnosia:voicechat/disable
schedule function gnosia:phase/discussion-start 60s
schedule function gnosia:ship-lights/alarm-toggle 30s
function gnosia:replace-trapdoors-cryoroom
kill @e[type=minecraft:text_display,tag=cryoroomName]
fill -274 83 -1611 -274 83 -1609 minecraft:air
function gnosia:admin/disable-op
