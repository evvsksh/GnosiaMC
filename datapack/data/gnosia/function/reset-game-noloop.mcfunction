stopsound @a
scoreboard players set votesCasted temp 0
clear @a written_book
clear @a netherite_sword
scoreboard players set win winning-conditions 0
schedule function gnosia:phase/start/start-game 20t
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
# disattiva i player dalla tab
scoreboard players set tabHidden gameStatus 1
kill @e[tag=Marks]
tag @a remove gnosiaElimination
tag @a remove cryoSleep
tag @a remove cantClaim
scoreboard players set gameStarted gameStatus 1

stopsound @a
schedule function gnosia:phase/discussion-start 60s
