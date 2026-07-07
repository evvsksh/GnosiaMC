stopsound @a
clear @a

function gnosia:disable-pvp
function gnosia:disable-interact

playsound gnosia:leviactivate player @a ~ ~ ~ 1 1 1
scoreboard objectives add voteSub dummy
scoreboard objectives add vote dummy
scoreboard objectives add voteCheck dummy
scoreboard objectives add spectatorOnDeath dummy
scoreboard objectives add gnosiaKillChoose dummy
scoreboard objectives add alreadyVoted dummy
scoreboard objectives add alreadyVotedDummy dummy
scoreboard objectives add alreadyVotedCryo dummy
scoreboard objectives add rolesCheck dummy
scoreboard objectives add cryotextTimer dummy
scoreboard objectives add temp dummy
scoreboard objectives add delay dummy
scoreboard objectives add days dummy
scoreboard objectives add rolesLeft dummy
scoreboard objectives add winning-conditions dummy
scoreboard objectives add areaCafeCheck dummy
scoreboard objectives add timers dummy
scoreboard objectives add playersID dummy
scoreboard objectives add playerDummyID dummy
scoreboard objectives add revoteCryo dummy
scoreboard objectives add music dummy
scoreboard objectives add nightTime dummy
scoreboard objectives add titleAnimation dummy
scoreboard objectives add gameStatus dummy
scoreboard objectives add loreSequence dummy
scoreboard objectives add speak dummy
scoreboard objectives add whitelist dummy
scoreboard objectives add playersOn dummy
scoreboard objectives add votedFor dummy
scoreboard objectives add claimStatus dummy
scoreboard objectives add engineerID dummy
scoreboard objectives add doctorID dummy
scoreboard objectives add engineerDummyID dummy
scoreboard objectives add doctorDummyID dummy
scoreboard objectives add reportTarget dummy
scoreboard objectives add reportRole dummy
scoreboard objectives add engineerReportRole dummy
scoreboard objectives add random_vote_select dummy

scoreboard objectives add doctorReport_c1 dummy
scoreboard objectives add doctorReport_c2 dummy
scoreboard objectives add doctorReport_c3 dummy
scoreboard objectives add doctorReport_c4 dummy
scoreboard objectives add doctorReport_c5 dummy
scoreboard objectives add doctorReport_c6 dummy
scoreboard objectives add doctorReport_c7 dummy
scoreboard objectives add doctorReport_c8 dummy
scoreboard objectives add doctorReport_c9 dummy
scoreboard objectives add doctorReport_c10 dummy
scoreboard objectives add doctorReport_c11 dummy
scoreboard objectives add doctorReport_c12 dummy
scoreboard objectives add doctorReport_c13 dummy
scoreboard objectives add doctorReport_c14 dummy
scoreboard objectives add doctorReport_c15 dummy

scoreboard objectives add logState dummy
scoreboard objectives add logReportIndexEngineer dummy
scoreboard objectives add logReportIndexDoctor dummy
scoreboard objectives add correctReportID dummy
scoreboard objectives add correctReportResult dummy

scoreboard objectives add consecutiveGamesSpectated dummy
scoreboard objectives add spectatorVolunteerStorage dummy

scoreboard players set whoisthegnosia titleAnimation -1
scoreboard players set endScreen gameStatus 1
scoreboard players set delay delay 1
scoreboard players set resetAnimation delay -1
scoreboard players reset * voteSub
scoreboard players set discussionTimer timers -1
scoreboard players set discussionTimerMax timers 6000
scoreboard players set votingTimer timers -1
scoreboard players set warpdriveTimer timers -1
scoreboard players set revoteTimer timers -1
scoreboard players set cryovotingTimer timers -1
scoreboard players set cryoPatienceTimer timers -1

scoreboard players set ledAnimationTimerOff temp -1
scoreboard players set ledAnimationTimerOnGreen temp -1
scoreboard players set ledAnimationTimerOnRed temp -1
scoreboard players set day days 1
scoreboard players set win winning-conditions 0
scoreboard players set playersAlive rolesCheck 15
scoreboard players set playersAliveRevote rolesCheck 15
scoreboard players set bugID gnosiaKillChoose -1
scoreboard players set doorcaferetia-lock timers -1
scoreboard players set doorcaferetia-unlock timers -1
scoreboard players set gnosiaKillChoose gnosiaKillChoose 0
scoreboard players set revoteAmount voteCheck 0
scoreboard players set freetime-music music 1
scoreboard players set discussion-music music 1
scoreboard players set voting-music music 1
scoreboard players set cryoAnnouncement delay 40
scoreboard players set voteCheck voteCheck 0
scoreboard players set cryoPhase voteCheck 0
scoreboard players set two temp 2
scoreboard players set alarm temp 0
scoreboard players set startLore loreSequence -1
scoreboard players set alarmDialogue loreSequence -1
scoreboard players reset * votedFor
scoreboard players set engineer claimStatus 0
scoreboard players set doctor claimStatus 0
scoreboard players set guardDuty claimStatus 0
scoreboard players set canLie claimStatus 1
scoreboard players reset * engineerID
scoreboard players reset * doctorID
scoreboard players reset * reportTarget
scoreboard players reset * reportRole
scoreboard players set reportPage logState 0
scoreboard players set engineerHover logState 0
scoreboard players set doctorHover logState 0
scoreboard players reset * logReportIndexEngineer
scoreboard players reset * logReportIndexDoctor
scoreboard players reset * correctReportID
scoreboard players reset * correctReportResult

# GAME STATUS
scoreboard players set tabHidden gameStatus 0
scoreboard players set showRoleActionbar gameStatus 0
scoreboard players set gameStarted gameStatus 0
function gnosia:enable-voicechat

scoreboard players reset * playersID
kill @e[tag=playerDummy]
scoreboard players reset * playerDummyID

# Set BOSSBAR

bossbar add discussion Discussion
bossbar add voting Voting
bossbar add warpdrive "Warp Drive"
bossbar add revote "Final Vote"
bossbar add cryovoting "Final Decision"

bossbar set discussion color blue
bossbar set discussion max 6000
bossbar set discussion players @a
bossbar set discussion value 6000
bossbar set discussion visible false

bossbar set voting color red
bossbar set voting max 1200
bossbar set voting players @a
bossbar set voting value 1200
bossbar set voting visible false

bossbar set warpdrive color purple
bossbar set warpdrive max 1800
bossbar set warpdrive players @a
bossbar set warpdrive value 1800
bossbar set warpdrive visible false

bossbar set revote color yellow
bossbar set revote max 1200
bossbar set revote players @a
bossbar set revote value 1200
bossbar set revote visible false

bossbar set cryovoting color yellow
bossbar set cryovoting max 1200
bossbar set cryovoting players @a
bossbar set cryovoting value 1200
bossbar set cryovoting visible false

# Add TAGS

tag @a remove crew
tag @a remove gnosiaElimination
tag @a remove cryoSleep
tag @a remove docSearch
tag @a remove cantClaim
tag @a remove reportMade

# Add TEAMS

team add res_dead
team modify res_dead friendlyFire false
team modify res_dead nametagVisibility never
team modify res_dead color dark_red

team add res_frozen
team modify res_frozen friendlyFire false
team modify res_frozen nametagVisibility never
team modify res_frozen color dark_aqua

team add crew
team join crew @a
team modify crew friendlyFire false
team modify crew nametagVisibility never
team modify crew color white

team add bug
team modify bug color black

team add engineer_claim
team modify engineer_claim friendlyFire false
team modify engineer_claim nametagVisibility never
team modify engineer_claim suffix [{"color":"#187fc4","text":" [Engineer]"}]
team modify engineer_claim color white

team add doctor_claim
team modify doctor_claim friendlyFire false
team modify doctor_claim nametagVisibility never
team modify doctor_claim suffix [{"color":"#8376b5","text":" [Doctor]"}]
team modify doctor_claim color white

team add guard_duty
team modify guard_duty friendlyFire false
team modify guard_duty nametagVisibility never
team modify guard_duty suffix [{"color":"#46b035","text":" [Guard Duty]"}]
team modify guard_duty color white

# Edit Gamerules

difficulty peaceful
gamerule spawn_mobs false
gamerule show_death_messages false
# set to true for stars animation
gamerule advance_time false
scoreboard players set nightTime nightTime 15000
time set 22000
gamerule keep_inventory true
gamerule pvp false
function gnosia:remove-c-roles
function gnosia:remove-all-roles


effect clear @a

schedule clear gnosia:music/discussion-music
schedule clear gnosia:music/voting-music
schedule clear gnosia:music/free-time-music
schedule clear gnosia:phase/voting-timer
schedule clear gnosia:phase/tp-to-cryosleep
schedule clear gnosia:voting/start-revote-cryo
schedule clear gnosia:voting/start-revote
schedule clear gnosia:phase/warp-drive
schedule clear gnosia:phase/discussion-start
schedule clear gnosia:phase/discussion-timer

# mostra i players nella tab
scoreboard players set tabHidden gameStatus 0
scoreboard players set endScreen gameStatus 0
execute as @e[type=armor_stand,tag=marks] run data merge entity @s {CustomName:{"color":"aqua","text":""}}
function gnosia:ship-lights/ship-light-normal

scoreboard players set gameStarted gameStatus 0

tp @a -289.5 82 -1609.5 -90 0
gamemode adventure @a

tp @e[tag=votePos] -269 37.5 -1610 0 0
tp @e[type=minecraft:text_display,tag=voteScores1] @e[tag=votePos,limit=1]
tp @e[type=minecraft:text_display,tag=voteScores2] @e[tag=votePos,limit=1]
tp @e[type=minecraft:text_display,tag=voteScores3] @e[tag=votePos,limit=1]
tp @e[type=minecraft:text_display,tag=voteScores4] @e[tag=votePos,limit=1]
tp @e[type=minecraft:text_display,tag=voteScores5] @e[tag=votePos,limit=1]
tp @e[type=minecraft:text_display,tag=voteScores6] @e[tag=votePos,limit=1]
tp @e[type=minecraft:text_display,tag=voteScores7] @e[tag=votePos,limit=1]
tp @e[type=minecraft:text_display,tag=voteScores8] @e[tag=votePos,limit=1]
tp @e[type=minecraft:text_display,tag=voteScores9] @e[tag=votePos,limit=1]
tp @e[type=minecraft:text_display,tag=voteScores10] @e[tag=votePos,limit=1]
tp @e[type=minecraft:text_display,tag=voteScores11] @e[tag=votePos,limit=1]
tp @e[type=minecraft:text_display,tag=voteScores12] @e[tag=votePos,limit=1]
tp @e[type=minecraft:text_display,tag=voteScores13] @e[tag=votePos,limit=1]
tp @e[type=minecraft:text_display,tag=voteScores14] @e[tag=votePos,limit=1]
tp @e[type=minecraft:text_display,tag=voteScores15] @e[tag=votePos,limit=1]

tag @a remove cryoVote
tag @a remove dead

function gnosia:door-vote-closing

execute if score endGameReload gameStatus matches 0 run tellraw @a {"bold":true,"color":"aqua","text":"Gnosia Datapack V1.2 - Loaded!"}
execute if score endGameReload gameStatus matches 0 run title @a actionbar {"bold":true,"color":"aqua","text":"Gnosia Datapack V1.2 - Loaded!"}
execute if score endGameReload gameStatus matches 1 run scoreboard players set endGameReload gameStatus 0
schedule clear gnosia:phase/discussion-start
function gnosia:replace-trapdoors-cryoroom
kill @e[type=minecraft:text_display,tag=cryoroomName]

execute unless block -300 88 -1610 minecraft:barrel run setblock -300 88 -1610 minecraft:barrel
function gnosia:log/distribute_master

setblock -274 83 -1611 minecraft:pale_oak_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:["",{text:"Cancel",click_event:{action:run_command,command:"trigger spectator_volunteer set 1"}},"Spectating",""]}}
setblock -274 83 -1610 minecraft:pale_oak_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:["",{text:"Spectate",click_event:{action:run_command,command:"trigger spectator_volunteer set 2"}},"Next Game",""]}}
setblock -274 83 -1609 minecraft:pale_oak_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:["",{text:"Spectate",click_event:{action:run_command,command:"trigger spectator_volunteer set 3"}},"Until Cancelled",""]}}