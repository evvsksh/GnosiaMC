execute if score discussionTimer timers matches 0.. run scoreboard players remove discussionTimer timers 1
execute if score revoteTimer timers matches 0.. run scoreboard players remove revoteTimer timers 1
execute if score votingTimer timers matches 0.. run scoreboard players remove votingTimer timers 1
execute if score cryovotingTimer timers matches 0.. run scoreboard players remove votingTimer timers 1

execute if score warpdriveTimer timers matches 0.. run scoreboard players remove warpdriveTimer timers 1
execute if score ledAnimationTimerOff temp matches 0.. run scoreboard players remove ledAnimationTimerOff temp 1
execute if score ledAnimationTimerOnRed temp matches 0.. run scoreboard players remove ledAnimationTimerOnRed temp 1
execute if score ledAnimationTimerOnGreen temp matches 0.. run scoreboard players remove ledAnimationTimerOnGreen temp 1

execute if score discussionTimer timers matches 0 run function gnosia:phase/voting-timer
execute if score votingTimer timers matches 0 run function gnosia:voting/tally-votes
execute if score warpdriveTimer timers matches 0 run function gnosia:phase/warp-drive-active
execute if score revoteTimer timers matches 0 run function gnosia:phase/voting-timer

# Update Bossbars Value

execute if score discussionTimer timers matches 0.. store result bossbar minecraft:discussion value run scoreboard players get discussionTimer timers
execute if score discussionTimer timers matches -1 run bossbar set minecraft:discussion value 6000
execute if score votingTimer timers matches 0.. store result bossbar minecraft:voting value run scoreboard players get votingTimer timers
execute if score votingTimer timers matches -1 run bossbar set minecraft:voting value 1200
execute if score warpdriveTimer timers matches 0.. store result bossbar minecraft:warpdrive value run scoreboard players get warpdriveTimer timers
execute if score warpdriveTimer timers matches -1 run bossbar set minecraft:warpdrive value 2400
execute if score revoteTimer timers matches 0.. store result bossbar minecraft:revote value run scoreboard players get revoteTimer timers
execute if score revoteTimer timers matches -1 run bossbar set minecraft:revote value 1200
execute if score cryovotingTimer timers matches 0.. store result bossbar minecraft:cryovoting value run scoreboard players get cryovotingTimer timers
execute if score cryovotingTimer timers matches -1 run bossbar set minecraft:cryovoting value 1200

# Update Bossbars MAX Value

execute store result bossbar minecraft:discussion max run scoreboard players get discussionTimerMax timers

# Skip Votes

execute if score votingTimer timers matches 1.. if score votesCasted temp = playersAlive rolesCheck run function gnosia:voting/skipvotetimer
#execute if score votingTimer timers matches 1.. if score votesCasted temp = playersAliveRevote rolesCheck run function gnosia:voting/skipvotetimer
execute if score gnosiaCanKill gnosiaKillChoose matches 1 if score gnosiaKillChoose gnosiaKillChoose matches 0.. run function gnosia:phase/night
# Change the second 0 to a one to stop the game from proceeding until gnosia have chosen the victim

# Prevent Night from passing
#execute if score reset nightTime matches 0 run time add 1
#execute if score reset nightTime matches 0 run scoreboard players add nightTime nightTime 1
#execute if score nightTime nightTime matches 21800.. run scoreboard players set reset nightTime 1
#execute if score reset nightTime matches 1 run scoreboard players set nightTime nightTime 15000
#execute if score reset nightTime matches 1 run time set 15000
#execute if score reset nightTime matches 1 run scoreboard players set reset nightTime 0


# Warp Drive Countdown

execute if score warpdriveTimer timers matches 200 run title @a[tag=crew] actionbar {"bold":true,"color":"aqua","text":"10"}
execute if score warpdriveTimer timers matches 180 run title @a[tag=crew] actionbar {"bold":true,"color":"aqua","text":"9"}
execute if score warpdriveTimer timers matches 160 run title @a[tag=crew] actionbar {"bold":true,"color":"aqua","text":"8"}
execute if score warpdriveTimer timers matches 140 run title @a[tag=crew] actionbar {"bold":true,"color":"aqua","text":"7"}
execute if score warpdriveTimer timers matches 120 run title @a[tag=crew] actionbar {"bold":true,"color":"aqua","text":"6"}
execute if score warpdriveTimer timers matches 100 run title @a[tag=crew] actionbar {"bold":true,"color":"aqua","text":"5"}
execute if score warpdriveTimer timers matches 80 run title @a[tag=crew] actionbar {"bold":true,"color":"aqua","text":"4"}
execute if score warpdriveTimer timers matches 80 run function gnosia:phase/warp-drive-fade
execute if score warpdriveTimer timers matches 10 run function gnosia:phase/warp-drive-sfx
execute if score warpdriveTimer timers matches 60 run title @a[tag=crew] actionbar {"bold":true,"color":"aqua","text":"3"}
execute if score warpdriveTimer timers matches 40 run title @a[tag=crew] actionbar {"bold":true,"color":"aqua","text":"2"}
execute if score warpdriveTimer timers matches 20 run title @a[tag=crew] actionbar {"bold":true,"color":"aqua","text":"1"}
execute if score warpdriveTimer timers matches 19 run function gnosia:disable-voicechat
execute at @e[tag=warpdriveParticles,limit=1] run tp @a[tag=!gnosia,tag=!dead,tag=warpdrive] ~ ~-10 ~ 0 -90
execute as @a[tag=!gnosia,tag=!dead,tag=warpdrive] run gamemode spectator @s
effect give @a[tag=!gnosia,tag=warpdrive] minecraft:blindness 3 1 true
execute as @a if score @s spectatorOnDeath matches 1 run tag @s remove alive

# Gnosia Dead Check

#execute as @a[tag=gnosia] if score @s spectatorOnDeath matches 1 run scoreboard players remove gnosiaLeft rolesLeft 1

# Bug Dead Check

execute as @a[tag=bug] if score @s spectatorOnDeath matches 1 run scoreboard players set bugLeft rolesLeft 0
execute as @a[tag=bug] if score @s spectatorOnDeath matches 1 run scoreboard players remove humansLeft rolesLeft 1
execute unless score endScreen gameStatus matches 1 at @a[team=bug] run particle minecraft:infested ~ ~.7 ~ .1 .1 .1 .4 20 normal

# Update Text Displays

tp @e[type=minecraft:text_display,tag=voteScores1] @e[tag=votePos,limit=1]
execute if score playersAmountStart rolesCheck matches 2.. at @e[tag=votePos,limit=1] run tp @e[type=minecraft:text_display,tag=voteScores2] ~ ~-.3 ~
execute if score playersAmountStart rolesCheck matches 3.. at @e[tag=votePos,limit=1] run tp @e[type=minecraft:text_display,tag=voteScores3] ~ ~-.6 ~
execute if score playersAmountStart rolesCheck matches 4.. at @e[tag=votePos,limit=1] run tp @e[type=minecraft:text_display,tag=voteScores4] ~ ~-.9 ~
execute if score playersAmountStart rolesCheck matches 5.. at @e[tag=votePos,limit=1] run tp @e[type=minecraft:text_display,tag=voteScores5] ~ ~-1.2 ~
execute if score playersAmountStart rolesCheck matches 6.. at @e[tag=votePos,limit=1] run tp @e[type=minecraft:text_display,tag=voteScores6] ~ ~-1.5 ~
execute if score playersAmountStart rolesCheck matches 7.. at @e[tag=votePos,limit=1] run tp @e[type=minecraft:text_display,tag=voteScores7] ~ ~-1.8 ~
execute if score playersAmountStart rolesCheck matches 8.. at @e[tag=votePos,limit=1] run tp @e[type=minecraft:text_display,tag=voteScores8] ~ ~-2.1 ~
execute if score playersAmountStart rolesCheck matches 9.. at @e[tag=votePos,limit=1] run tp @e[type=minecraft:text_display,tag=voteScores9] ~ ~-2.4 ~
execute if score playersAmountStart rolesCheck matches 10.. at @e[tag=votePos,limit=1] run tp @e[type=minecraft:text_display,tag=voteScores10] ~ ~-2.7 ~
execute if score playersAmountStart rolesCheck matches 11.. at @e[tag=votePos,limit=1] run tp @e[type=minecraft:text_display,tag=voteScores11] ~ ~-3 ~
execute if score playersAmountStart rolesCheck matches 12.. at @e[tag=votePos,limit=1] run tp @e[type=minecraft:text_display,tag=voteScores12] ~ ~-3.3 ~
execute if score playersAmountStart rolesCheck matches 13.. at @e[tag=votePos,limit=1] run tp @e[type=minecraft:text_display,tag=voteScores13] ~ ~-3.6 ~
execute if score playersAmountStart rolesCheck matches 14.. at @e[tag=votePos,limit=1] run tp @e[type=minecraft:text_display,tag=voteScores14] ~ ~-3.9 ~
execute if score playersAmountStart rolesCheck matches 15.. at @e[tag=votePos,limit=1] run tp @e[type=minecraft:text_display,tag=voteScores15] ~ ~-4.2 ~

execute at @e[type=minecraft:armor_stand,tag=votePos,limit=1] run tp @e[tag=cryosleepPos] ~ ~-1.5 ~2.5

## DELAY FUNCTION

execute if score delay delay matches ..0 run scoreboard players set delay delay 7
execute if score delay delay matches 1.. run scoreboard players remove delay delay 1

# VOTING SYSTEM

execute if score voteCheck voteCheck matches 1 if score @e[tag=c1,limit=1,type=armor_stand] voteSub matches 1.. if score delay delay matches ..0 run function gnosia:voting/tally-votes/count-c1
execute if score voteCheck voteCheck matches 2 if score @e[tag=c2,limit=1,type=armor_stand] voteSub matches 1.. if score delay delay matches ..0 run function gnosia:voting/tally-votes/count-c2
## This one had "matches 0" after "voteSub"
execute if score voteCheck voteCheck matches 3 if score @e[tag=c3,limit=1,type=armor_stand] voteSub matches 1.. if score delay delay matches ..0 run function gnosia:voting/tally-votes/count-c3
execute if score voteCheck voteCheck matches 4 if score @e[tag=c4,limit=1,type=armor_stand] voteSub matches 1.. if score delay delay matches ..0 run function gnosia:voting/tally-votes/count-c4
execute if score voteCheck voteCheck matches 5 if score @e[tag=c5,limit=1,type=armor_stand] voteSub matches 1.. if score delay delay matches ..0 run function gnosia:voting/tally-votes/count-c5
execute if score voteCheck voteCheck matches 6 if score @e[tag=c6,limit=1,type=armor_stand] voteSub matches 1.. if score delay delay matches ..0 run function gnosia:voting/tally-votes/count-c6
execute if score voteCheck voteCheck matches 7 if score @e[tag=c7,limit=1,type=armor_stand] voteSub matches 1.. if score delay delay matches ..0 run function gnosia:voting/tally-votes/count-c7
execute if score voteCheck voteCheck matches 8 if score @e[tag=c8,limit=1,type=armor_stand] voteSub matches 1.. if score delay delay matches ..0 run function gnosia:voting/tally-votes/count-c8
execute if score voteCheck voteCheck matches 9 if score @e[tag=c9,limit=1,type=armor_stand] voteSub matches 1.. if score delay delay matches ..0 run function gnosia:voting/tally-votes/count-c9
execute if score voteCheck voteCheck matches 10 if score @e[tag=c10,limit=1,type=armor_stand] voteSub matches 1.. if score delay delay matches ..0 run function gnosia:voting/tally-votes/count-c10
execute if score voteCheck voteCheck matches 11 if score @e[tag=c11,limit=1,type=armor_stand] voteSub matches 1.. if score delay delay matches ..0 run function gnosia:voting/tally-votes/count-c11
execute if score voteCheck voteCheck matches 12 if score @e[tag=c12,limit=1,type=armor_stand] voteSub matches 1.. if score delay delay matches ..0 run function gnosia:voting/tally-votes/count-c12
execute if score voteCheck voteCheck matches 13 if score @e[tag=c13,limit=1,type=armor_stand] voteSub matches 1.. if score delay delay matches ..0 run function gnosia:voting/tally-votes/count-c13
execute if score voteCheck voteCheck matches 14 if score @e[tag=c14,limit=1,type=armor_stand] voteSub matches 1.. if score delay delay matches ..0 run function gnosia:voting/tally-votes/count-c14
execute if score voteCheck voteCheck matches 15 if score @e[tag=c15,limit=1,type=armor_stand] voteSub matches 1.. if score delay delay matches ..0 run function gnosia:voting/tally-votes/count-c15

## Add votecheck

execute if score @e[tag=c1,limit=1,type=armor_stand] voteSub matches 0 if score voteCheck voteCheck matches 1 run scoreboard players add voteCheck voteCheck 1
execute if score @e[tag=c2,limit=1,type=armor_stand] voteSub matches 0 if score voteCheck voteCheck matches 2 run scoreboard players add voteCheck voteCheck 1
execute if score @e[tag=c3,limit=1,type=armor_stand] voteSub matches 0 if score voteCheck voteCheck matches 3 run scoreboard players add voteCheck voteCheck 1
execute if score @e[tag=c4,limit=1,type=armor_stand] voteSub matches 0 if score voteCheck voteCheck matches 4 run scoreboard players add voteCheck voteCheck 1
execute if score @e[tag=c5,limit=1,type=armor_stand] voteSub matches 0 if score voteCheck voteCheck matches 5 run scoreboard players add voteCheck voteCheck 1
execute if score @e[tag=c6,limit=1,type=armor_stand] voteSub matches 0 if score voteCheck voteCheck matches 6 run scoreboard players add voteCheck voteCheck 1
execute if score @e[tag=c7,limit=1,type=armor_stand] voteSub matches 0 if score voteCheck voteCheck matches 7 run scoreboard players add voteCheck voteCheck 1
execute if score @e[tag=c8,limit=1,type=armor_stand] voteSub matches 0 if score voteCheck voteCheck matches 8 run scoreboard players add voteCheck voteCheck 1
execute if score @e[tag=c9,limit=1,type=armor_stand] voteSub matches 0 if score voteCheck voteCheck matches 9 run scoreboard players add voteCheck voteCheck 1
execute if score @e[tag=c10,limit=1,type=armor_stand] voteSub matches 0 if score voteCheck voteCheck matches 10 run scoreboard players add voteCheck voteCheck 1
execute if score @e[tag=c11,limit=1,type=armor_stand] voteSub matches 0 if score voteCheck voteCheck matches 11 run scoreboard players add voteCheck voteCheck 1
execute if score @e[tag=c12,limit=1,type=armor_stand] voteSub matches 0 if score voteCheck voteCheck matches 12 run scoreboard players add voteCheck voteCheck 1
execute if score @e[tag=c13,limit=1,type=armor_stand] voteSub matches 0 if score voteCheck voteCheck matches 13 run scoreboard players add voteCheck voteCheck 1
execute if score @e[tag=c14,limit=1,type=armor_stand] voteSub matches 0 if score voteCheck voteCheck matches 14 run scoreboard players add voteCheck voteCheck 1
execute if score @e[tag=c15,limit=1,type=armor_stand] voteSub matches 0 if score voteCheck voteCheck matches 15 run scoreboard players add voteCheck voteCheck 1

execute if score voteCheck voteCheck >= playerThreshold rolesCheck run scoreboard players remove cryoAnnouncement delay 1
execute if score cryoAnnouncement delay matches 0 if score voteCheck voteCheck >= playerThreshold rolesCheck run function gnosia:voting/tally-votes-max1
execute if score cryoAnnouncement delay matches 0 if score voteCheck voteCheck >= playerThreshold rolesCheck run scoreboard players set voteCheck voteCheck 0
execute if score cryoAnnouncement delay matches 0 run scoreboard players set cryoAnnouncement delay 40
#Cryotext Timer

execute if score cryotextTimer cryotextTimer matches 0.. run scoreboard players add cryotextTimer cryotextTimer 1

execute if score cryotextTimer cryotextTimer matches 240.. run kill @e[tag=cryotext]
execute if score cryotextTimer cryotextTimer matches 240.. run kill @e[tag=cryotextName]
execute if score cryotextTimer cryotextTimer matches 240.. run scoreboard players set cryotextTimer cryotextTimer -1

execute if score cryotextTimer cryotextTimer matches 120 run data merge entity @e[type=text_display,limit=1,tag=cryotext] {start_interpolation:-1,interpolation_duration:50,text_opacity:0b,background:1481884}
execute if score cryotextTimer cryotextTimer matches 120 run data merge entity @e[type=text_display,limit=1,tag=cryotextName] {start_interpolation:-1,interpolation_duration:50,text_opacity:0b,background:1481884}

#Spawning Sequence
execute if score .spawnSequence delay matches 1.. run scoreboard players remove .spawnSequence delay 1
execute if score .spawnSequence delay matches 1.. run tag @r[tag=!spawned] add spawning
execute if score .spawnSequence delay matches 1.. run execute as @a[tag=spawning] at @e[tag=crewSpawn,type=minecraft:armor_stand,sort=random,limit=1] run tp @s ~ ~ ~ ~ 0
tag @a[tag=spawning] add spawned
tag @a[tag=spawning] remove spawning

#Warpdrive Particles
execute at @e[tag=warpdriveParticles] run particle minecraft:end_rod ~ ~ ~ .1 .1 .1 .7 50 normal

#Gnosia Kill Check

#execute if score gnosiaCanKill gnosiaKillChoose matches 1.. if score gnosiaKillChoose gnosiaKillChoose matches 1.. run function gnosia:phase/gnosia-kill-check

#Timer Night Kill Delay
execute if score #timernightkill delay matches 0.. run scoreboard players add #timernightkill delay 1
execute if score #timernightfail delay matches 0.. run scoreboard players add #timernightfail delay 1

execute if score #timernightkill delay matches 5.. run function gnosia:gnosia-kill-player
execute if score #timernightkill delay matches 5.. run scoreboard players set #timernightkill delay -1

execute if score #timernightfail delay matches 5.. run function gnosia:gnosia-kill-fail
execute if score #timernightfail delay matches 5.. run scoreboard players set #timernightfail delay -1

#Spectator on Death
execute as @a if score @s spectatorOnDeath matches 1 run gamemode spectator @s
execute as @a if score @s spectatorOnDeath matches 1 run tag @s add dead
scoreboard players set @a spectatorOnDeath 0

# Selection Actionbar Title: Engineer

execute if score engSearch gnosiaKillChoose matches 1 run title @a[tag=engineer] actionbar ["",{"text":"You have selected ","color":"#187fc4"},{"selector":"@a[tag=c1]","color":"#187fc4"}]
execute if score engSearch gnosiaKillChoose matches 2 run title @a[tag=engineer] actionbar ["",{"text":"You have selected ","color":"#187fc4"},{"selector":"@a[tag=c2]","color":"#187fc4"}]
execute if score engSearch gnosiaKillChoose matches 3 run title @a[tag=engineer] actionbar ["",{"text":"You have selected ","color":"#187fc4"},{"selector":"@a[tag=c3]","color":"#187fc4"}]
execute if score engSearch gnosiaKillChoose matches 4 run title @a[tag=engineer] actionbar ["",{"text":"You have selected ","color":"#187fc4"},{"selector":"@a[tag=c4]","color":"#187fc4"}]
execute if score engSearch gnosiaKillChoose matches 5 run title @a[tag=engineer] actionbar ["",{"text":"You have selected ","color":"#187fc4"},{"selector":"@a[tag=c5]","color":"#187fc4"}]
execute if score engSearch gnosiaKillChoose matches 6 run title @a[tag=engineer] actionbar ["",{"text":"You have selected ","color":"#187fc4"},{"selector":"@a[tag=c6]","color":"#187fc4"}]
execute if score engSearch gnosiaKillChoose matches 7 run title @a[tag=engineer] actionbar ["",{"text":"You have selected ","color":"#187fc4"},{"selector":"@a[tag=c7]","color":"#187fc4"}]
execute if score engSearch gnosiaKillChoose matches 8 run title @a[tag=engineer] actionbar ["",{"text":"You have selected ","color":"#187fc4"},{"selector":"@a[tag=c8]","color":"#187fc4"}]
execute if score engSearch gnosiaKillChoose matches 9 run title @a[tag=engineer] actionbar ["",{"text":"You have selected ","color":"#187fc4"},{"selector":"@a[tag=c9]","color":"#187fc4"}]
execute if score engSearch gnosiaKillChoose matches 10 run title @a[tag=engineer] actionbar ["",{"text":"You have selected ","color":"#187fc4"},{"selector":"@a[tag=c10]","color":"#187fc4"}]
execute if score engSearch gnosiaKillChoose matches 11 run title @a[tag=engineer] actionbar ["",{"text":"You have selected ","color":"#187fc4"},{"selector":"@a[tag=c11]","color":"#187fc4"}]
execute if score engSearch gnosiaKillChoose matches 12 run title @a[tag=engineer] actionbar ["",{"text":"You have selected ","color":"#187fc4"},{"selector":"@a[tag=c12]","color":"#187fc4"}]
execute if score engSearch gnosiaKillChoose matches 13 run title @a[tag=engineer] actionbar ["",{"text":"You have selected ","color":"#187fc4"},{"selector":"@a[tag=c13]","color":"#187fc4"}]
execute if score engSearch gnosiaKillChoose matches 14 run title @a[tag=engineer] actionbar ["",{"text":"You have selected ","color":"#187fc4"},{"selector":"@a[tag=c14]","color":"#187fc4"}]
execute if score engSearch gnosiaKillChoose matches 15 run title @a[tag=engineer] actionbar ["",{"text":"You have selected ","color":"#187fc4"},{"selector":"@a[tag=c15]","color":"#187fc4"}]

# Selection Actionbar Title: Angel

execute if score angelSave gnosiaKillChoose matches 1 run title @a[tag=angel] actionbar ["",{"text":"You have selected ","color":"#f6ad3c"},{"selector":"@a[tag=c1]","color":"#f6ad3c"}]
execute if score angelSave gnosiaKillChoose matches 2 run title @a[tag=angel] actionbar ["",{"text":"You have selected ","color":"#f6ad3c"},{"selector":"@a[tag=c2]","color":"#f6ad3c"}]
execute if score angelSave gnosiaKillChoose matches 3 run title @a[tag=angel] actionbar ["",{"text":"You have selected ","color":"#f6ad3c"},{"selector":"@a[tag=c3]","color":"#f6ad3c"}]
execute if score angelSave gnosiaKillChoose matches 4 run title @a[tag=angel] actionbar ["",{"text":"You have selected ","color":"#f6ad3c"},{"selector":"@a[tag=c4]","color":"#f6ad3c"}]
execute if score angelSave gnosiaKillChoose matches 5 run title @a[tag=angel] actionbar ["",{"text":"You have selected ","color":"#f6ad3c"},{"selector":"@a[tag=c5]","color":"#f6ad3c"}]
execute if score angelSave gnosiaKillChoose matches 6 run title @a[tag=angel] actionbar ["",{"text":"You have selected ","color":"#f6ad3c"},{"selector":"@a[tag=c6]","color":"#f6ad3c"}]
execute if score angelSave gnosiaKillChoose matches 7 run title @a[tag=angel] actionbar ["",{"text":"You have selected ","color":"#f6ad3c"},{"selector":"@a[tag=c7]","color":"#f6ad3c"}]
execute if score angelSave gnosiaKillChoose matches 8 run title @a[tag=angel] actionbar ["",{"text":"You have selected ","color":"#f6ad3c"},{"selector":"@a[tag=c8]","color":"#f6ad3c"}]
execute if score angelSave gnosiaKillChoose matches 9 run title @a[tag=angel] actionbar ["",{"text":"You have selected ","color":"#f6ad3c"},{"selector":"@a[tag=c9]","color":"#f6ad3c"}]
execute if score angelSave gnosiaKillChoose matches 10 run title @a[tag=angel] actionbar ["",{"text":"You have selected ","color":"#f6ad3c"},{"selector":"@a[tag=c10]","color":"#f6ad3c"}]
execute if score angelSave gnosiaKillChoose matches 11 run title @a[tag=angel] actionbar ["",{"text":"You have selected ","color":"#f6ad3c"},{"selector":"@a[tag=c11]","color":"#f6ad3c"}]
execute if score angelSave gnosiaKillChoose matches 12 run title @a[tag=angel] actionbar ["",{"text":"You have selected ","color":"#f6ad3c"},{"selector":"@a[tag=c12]","color":"#f6ad3c"}]
execute if score angelSave gnosiaKillChoose matches 13 run title @a[tag=angel] actionbar ["",{"text":"You have selected ","color":"#f6ad3c"},{"selector":"@a[tag=c13]","color":"#f6ad3c"}]
execute if score angelSave gnosiaKillChoose matches 14 run title @a[tag=angel] actionbar ["",{"text":"You have selected ","color":"#f6ad3c"},{"selector":"@a[tag=c14]","color":"#f6ad3c"}]
execute if score angelSave gnosiaKillChoose matches 15 run title @a[tag=angel] actionbar ["",{"text":"You have selected ","color":"#f6ad3c"},{"selector":"@a[tag=c15]","color":"#f6ad3c"}]

# Selection Actionbar Title: Gnosia

execute if score gnosiaKillChoose gnosiaKillChoose matches 1 run title @a[tag=gnosia] actionbar ["",{"text":"You have selected ","color":"#e60039"},{"selector":"@a[tag=c1]","color":"#e60039"}]
execute if score gnosiaKillChoose gnosiaKillChoose matches 2 run title @a[tag=gnosia] actionbar ["",{"text":"You have selected ","color":"#e60039"},{"selector":"@a[tag=c2]","color":"#e60039"}]
execute if score gnosiaKillChoose gnosiaKillChoose matches 3 run title @a[tag=gnosia] actionbar ["",{"text":"You have selected ","color":"#e60039"},{"selector":"@a[tag=c3]","color":"#e60039"}]
execute if score gnosiaKillChoose gnosiaKillChoose matches 4 run title @a[tag=gnosia] actionbar ["",{"text":"You have selected ","color":"#e60039"},{"selector":"@a[tag=c4]","color":"#e60039"}]
execute if score gnosiaKillChoose gnosiaKillChoose matches 5 run title @a[tag=gnosia] actionbar ["",{"text":"You have selected ","color":"#e60039"},{"selector":"@a[tag=c5]","color":"#e60039"}]
execute if score gnosiaKillChoose gnosiaKillChoose matches 6 run title @a[tag=gnosia] actionbar ["",{"text":"You have selected ","color":"#e60039"},{"selector":"@a[tag=c6]","color":"#e60039"}]
execute if score gnosiaKillChoose gnosiaKillChoose matches 7 run title @a[tag=gnosia] actionbar ["",{"text":"You have selected ","color":"#e60039"},{"selector":"@a[tag=c7]","color":"#e60039"}]
execute if score gnosiaKillChoose gnosiaKillChoose matches 8 run title @a[tag=gnosia] actionbar ["",{"text":"You have selected ","color":"#e60039"},{"selector":"@a[tag=c8]","color":"#e60039"}]
execute if score gnosiaKillChoose gnosiaKillChoose matches 9 run title @a[tag=gnosia] actionbar ["",{"text":"You have selected ","color":"#e60039"},{"selector":"@a[tag=c9]","color":"#e60039"}]
execute if score gnosiaKillChoose gnosiaKillChoose matches 10 run title @a[tag=gnosia] actionbar ["",{"text":"You have selected ","color":"#e60039"},{"selector":"@a[tag=c10]","color":"#e60039"}]
execute if score gnosiaKillChoose gnosiaKillChoose matches 11 run title @a[tag=gnosia] actionbar ["",{"text":"You have selected ","color":"#e60039"},{"selector":"@a[tag=c11]","color":"#e60039"}]
execute if score gnosiaKillChoose gnosiaKillChoose matches 12 run title @a[tag=gnosia] actionbar ["",{"text":"You have selected ","color":"#e60039"},{"selector":"@a[tag=c12]","color":"#e60039"}]
execute if score gnosiaKillChoose gnosiaKillChoose matches 13 run title @a[tag=gnosia] actionbar ["",{"text":"You have selected ","color":"#e60039"},{"selector":"@a[tag=c13]","color":"#e60039"}]
execute if score gnosiaKillChoose gnosiaKillChoose matches 14 run title @a[tag=gnosia] actionbar ["",{"text":"You have selected ","color":"#e60039"},{"selector":"@a[tag=c14]","color":"#e60039"}]
execute if score gnosiaKillChoose gnosiaKillChoose matches 15 run title @a[tag=gnosia] actionbar ["",{"text":"You have selected ","color":"#e60039"},{"selector":"@a[tag=c15]","color":"#e60039"}]

# Door Lock OLD

#execute if score doorcaferetia-lock timers matches 0.. run scoreboard players remove doorcaferetia-lock timers 1

#execute if score doorcaferetia-lock timers matches 18 at @e[tag=doorcafeteria] run fill ^3 ^ ^ ^3 ^4 ^ iron_block
#execute if score doorcaferetia-lock timers matches 18 at @e[tag=doorcafeteria] run fill ^-3 ^ ^ ^-3 ^4 ^ iron_block

#execute if score doorcaferetia-lock timers matches 16 at @e[tag=doorcafeteria] run fill ^3 ^ ^ ^2 ^4 ^ iron_block
#execute if score doorcaferetia-lock timers matches 16 at @e[tag=doorcafeteria] run fill ^-3 ^ ^ ^-2 ^4 ^ iron_block

#execute if score doorcaferetia-lock timers matches 14 at @e[tag=doorcafeteria] run fill ^3 ^ ^ ^1 ^4 ^ iron_block
#execute if score doorcaferetia-lock timers matches 14 at @e[tag=doorcafeteria] run fill ^-3 ^ ^ ^-1 ^4 ^ iron_block

#execute if score doorcaferetia-lock timers matches 12 at @e[tag=doorcafeteria] run fill ^3 ^ ^ ^0 ^4 ^ iron_block

# Door Unlock OLD

#execute if score doorcaferetia-unlock timers matches 0.. run scoreboard players remove doorcaferetia-unlock timers 1

#execute if score doorcaferetia-unlock timers matches 12 at @e[tag=doorcafeteria] run fill ^3 ^ ^ ^3 ^4 ^ air
#execute if score doorcaferetia-unlock timers matches 12 at @e[tag=doorcafeteria] run fill ^-3 ^ ^ ^-3 ^4 ^ air

#execute if score doorcaferetia-unlock timers matches 14 at @e[tag=doorcafeteria] run fill ^0 ^ ^ ^2 ^4 ^ air
#execute if score doorcaferetia-unlock timers matches 14 at @e[tag=doorcafeteria] run fill ^-1 ^ ^ ^-2 ^4 ^ air

#execute if score doorcaferetia-unlock timers matches 16 at @e[tag=doorcafeteria] run fill ^0 ^ ^ ^1 ^4 ^ air
#execute if score doorcaferetia-unlock timers matches 16 at @e[tag=doorcafeteria] run fill ^-1 ^ ^ ^-1 ^4 ^ air

#execute if score doorcaferetia-unlock timers matches 18 at @e[tag=doorcafeteria] run fill ^0 ^ ^ ^0 ^4 ^ air

# Area Cafeteria Check

execute as @a if entity @s[x=-96,y=-16,z=-89,dx=45,dy=500,dz=45] run scoreboard players set @s areaCafeCheck 1
execute as @a unless entity @s[x=-96,y=-16,z=-89,dx=45,dy=500,dz=45] run scoreboard players set @s areaCafeCheck 0

# Players ID
execute as @a[tag=c1,tag=!dead] run scoreboard players set @s playersID 1
execute as @a[tag=c2,tag=!dead] run scoreboard players set @s playersID 2
execute as @a[tag=c3,tag=!dead] run scoreboard players set @s playersID 3
execute as @a[tag=c4,tag=!dead] run scoreboard players set @s playersID 4
execute as @a[tag=c5,tag=!dead] run scoreboard players set @s playersID 5
execute as @a[tag=c6,tag=!dead] run scoreboard players set @s playersID 6
execute as @a[tag=c7,tag=!dead] run scoreboard players set @s playersID 7
execute as @a[tag=c8,tag=!dead] run scoreboard players set @s playersID 8
execute as @a[tag=c9,tag=!dead] run scoreboard players set @s playersID 9
execute as @a[tag=c10,tag=!dead] run scoreboard players set @s playersID 10
execute as @a[tag=c11,tag=!dead] run scoreboard players set @s playersID 11
execute as @a[tag=c12,tag=!dead] run scoreboard players set @s playersID 12
execute as @a[tag=c13,tag=!dead] run scoreboard players set @s playersID 13
execute as @a[tag=c14,tag=!dead] run scoreboard players set @s playersID 14
execute as @a[tag=c15,tag=!dead] run scoreboard players set @s playersID 15

execute as @a[tag=c1,tag=!dead,tag=cryoVote] run scoreboard players set @s playersIDrevote 1
execute as @a[tag=c2,tag=!dead,tag=cryoVote] run scoreboard players set @s playersIDrevote 2
execute as @a[tag=c3,tag=!dead,tag=cryoVote] run scoreboard players set @s playersIDrevote 3
execute as @a[tag=c4,tag=!dead,tag=cryoVote] run scoreboard players set @s playersIDrevote 4
execute as @a[tag=c5,tag=!dead,tag=cryoVote] run scoreboard players set @s playersIDrevote 5
execute as @a[tag=c6,tag=!dead,tag=cryoVote] run scoreboard players set @s playersIDrevote 6
execute as @a[tag=c7,tag=!dead,tag=cryoVote] run scoreboard players set @s playersIDrevote 7
execute as @a[tag=c8,tag=!dead,tag=cryoVote] run scoreboard players set @s playersIDrevote 8
execute as @a[tag=c9,tag=!dead,tag=cryoVote] run scoreboard players set @s playersIDrevote 9
execute as @a[tag=c10,tag=!dead,tag=cryoVote] run scoreboard players set @s playersIDrevote 10
execute as @a[tag=c11,tag=!dead,tag=cryoVote] run scoreboard players set @s playersIDrevote 11
execute as @a[tag=c12,tag=!dead,tag=cryoVote] run scoreboard players set @s playersIDrevote 12
execute as @a[tag=c13,tag=!dead,tag=cryoVote] run scoreboard players set @s playersIDrevote 13
execute as @a[tag=c14,tag=!dead,tag=cryoVote] run scoreboard players set @s playersIDrevote 14
execute as @a[tag=c15,tag=!dead,tag=cryoVote] run scoreboard players set @s playersIDrevote 15

# Music OLD RANDOM SYSTEM
stopsound @a music
#execute if score freetime-music music matches 1.. run scoreboard players remove freetime-music music 1
#execute if score freetime-music music matches ..0 run scoreboard players set freetime-music music 120
#execute if score freetime-music music matches 121.. run scoreboard players set freetime-music music 120

#execute if score discussion-music music matches 1.. run scoreboard players remove discussion-music music 1
#execute if score discussion-music music matches ..0 run scoreboard players set discussion-music music 4

#execute if score voting-music music matches 1.. run scoreboard players remove voting-music music 1
#execute if score voting-music music matches ..0 run scoreboard players set voting-music music 4

#execute as @a[tag=dead] unless entity @s[x=-329,y=55,z=-1488,dx=229,dy=100,dz=-250] run tp @s -276.37 82.00 -1609.50 ~ ~
#execute if score @a[limit=1] random matches 5 run scoreboard players add freetime-music music 7
#execute if score @a[limit=1] random matches 5 run scoreboard players remove discussion-music music 1
#execute if score @a[limit=1] random matches 5 run scoreboard players remove voting-music music 1
#execute if score @a[limit=1] random matches 5.. run scoreboard players set @a random 0

# Door Lock

execute if score doorcaferetia-lock timers matches 0.. run scoreboard players remove doorcaferetia-lock timers 1

execute if score doorcaferetia-lock timers matches 18 at @e[tag=doormeeting] run fill ^1 ^2 ^0 ^-1 ^2 ^0 iron_block
execute if score doorcaferetia-lock timers matches 16 at @e[tag=doormeeting] run fill ^1 ^2 ^0 ^-1 ^1 ^0 iron_block
execute if score doorcaferetia-lock timers matches 14 at @e[tag=doormeeting] run fill ^1 ^2 ^0 ^-1 ^0 ^0 iron_block

# Door Unlock

execute if score doorcaferetia-unlock timers matches 0.. run scoreboard players remove doorcaferetia-unlock timers 1

execute if score doorcaferetia-unlock timers matches 14 at @e[tag=doormeeting] run fill ^1 ^0 ^0 ^-1 ^2 ^0 air
execute if score doorcaferetia-unlock timers matches 16 at @e[tag=doormeeting] run fill ^1 ^0 ^0 ^-1 ^1 ^0 air
execute if score doorcaferetia-unlock timers matches 18 at @e[tag=doormeeting] run fill ^1 ^0 ^0 ^-1 ^0 ^0 air

# Check players amount
execute store result score playersAmount rolesCheck run execute if entity @a
execute if score votingTimer timers matches -1 store result score playersAlive rolesCheck run execute if entity @a[tag=!dead]
execute store result score bugLeft rolesLeft run execute if entity @a[tag=bug,tag=!dead]
execute store result score humansLeft rolesLeft run execute if entity @a[tag=bug,tag=!dead]
execute store result score humansLeft rolesLeft run execute if entity @a[tag=!gnosia,tag=!dead]
execute store result score gnosiaLeft rolesLeft run execute if entity @a[tag=gnosia,tag=!dead]
scoreboard players operation playerThreshold rolesCheck = playersAlive rolesCheck
scoreboard players add playerThreshold rolesCheck 1
#scoreboard players operation playersAliveRevote rolesCheck = playersAlive rolesCheck
#execute as @a[tag=cryoVote] run scoreboard players remove playersAliveRevote rolesCheck 1

# AUTOVOTE

execute as @a[tag=!dead] if score @s alreadyVoted matches 0 if score votingTimer timers matches 2 run function gnosia:voting/voteselect/random

## TITLE ANIMATION
execute if score whoisthegnosia titleAnimation matches 0.. run scoreboard players add whoisthegnosia titleAnimation 1
execute if score whoisthegnosia titleAnimation matches 50.. run scoreboard players set whoisthegnosia titleAnimation -1

execute if score whoisthegnosia titleAnimation matches 2 run title @a[tag=crew] subtitle {"bold":true,"color":"#e60039","text":"W"}
execute if score whoisthegnosia titleAnimation matches 2 run effect give @a[tag=c1] glowing 1 10 true
execute if score whoisthegnosia titleAnimation matches 4 run title @a[tag=crew] subtitle {"bold":true,"color":"#e60039","text":"Wh"}
execute if score whoisthegnosia titleAnimation matches 4 run effect give @a[tag=c2] glowing 1 10 true
execute if score whoisthegnosia titleAnimation matches 6 run title @a[tag=crew] subtitle {"bold":true,"color":"#e60039","text":"Who"}
execute if score whoisthegnosia titleAnimation matches 6 run effect give @a[tag=c3] glowing 1 10 true
execute if score whoisthegnosia titleAnimation matches 8 run title @a[tag=crew] subtitle {"bold":true,"color":"#e60039","text":"Who i"}
execute if score whoisthegnosia titleAnimation matches 8 run effect give @a[tag=c4] glowing 1 10 true
execute if score whoisthegnosia titleAnimation matches 10 run title @a[tag=crew] subtitle {"bold":true,"color":"#e60039","text":"Who is"}
execute if score whoisthegnosia titleAnimation matches 10 run effect give @a[tag=c5] glowing 1 10 true
execute if score whoisthegnosia titleAnimation matches 12 run title @a[tag=crew] subtitle {"bold":true,"color":"#e60039","text":"Who is t"}
execute if score whoisthegnosia titleAnimation matches 12 run effect give @a[tag=c6] glowing 1 10 true
execute if score whoisthegnosia titleAnimation matches 14 run title @a[tag=crew] subtitle {"bold":true,"color":"#e60039","text":"Who is th"}
execute if score whoisthegnosia titleAnimation matches 14 run effect give @a[tag=c7] glowing 1 10 true
execute if score whoisthegnosia titleAnimation matches 16 run title @a[tag=crew] subtitle {"bold":true,"color":"#e60039","text":"Who is the "}
execute if score whoisthegnosia titleAnimation matches 16 run effect give @a[tag=c8] glowing 1 10 true
execute if score whoisthegnosia titleAnimation matches 18 run title @a[tag=crew] subtitle {"bold":true,"color":"#e60039","text":"Who is the G"}
execute if score whoisthegnosia titleAnimation matches 18 run effect give @a[tag=c9] glowing 1 10 true
execute if score whoisthegnosia titleAnimation matches 20 run title @a[tag=crew] subtitle {"bold":true,"color":"#e60039","text":"Who is the Gn"}
execute if score whoisthegnosia titleAnimation matches 20 run effect give @a[tag=c10] glowing 1 10 true
execute if score whoisthegnosia titleAnimation matches 22 run title @a[tag=crew] subtitle {"bold":true,"color":"#e60039","text":"Who is the Gno"}
execute if score whoisthegnosia titleAnimation matches 22 run effect give @a[tag=c11] glowing 1 10 true
execute if score whoisthegnosia titleAnimation matches 24 run title @a[tag=crew] subtitle {"bold":true,"color":"#e60039","text":"Who is the Gnos"}
execute if score whoisthegnosia titleAnimation matches 24 run effect give @a[tag=c12] glowing 1 10 true
execute if score whoisthegnosia titleAnimation matches 26 run title @a[tag=crew] subtitle {"bold":true,"color":"#e60039","text":"Who is the Gnosi"}
execute if score whoisthegnosia titleAnimation matches 26 run effect give @a[tag=c13] glowing 1 10 true
execute if score whoisthegnosia titleAnimation matches 28 run title @a[tag=crew] subtitle {"bold":true,"color":"#e60039","text":"Who is the Gnosia"}
execute if score whoisthegnosia titleAnimation matches 28 run effect give @a[tag=c14] glowing 1 10 true
execute if score whoisthegnosia titleAnimation matches 30 run title @a[tag=crew] subtitle {"bold":true,"color":"#e60039","text":"Who is the Gnosia?"}
execute if score whoisthegnosia titleAnimation matches 30 run effect give @a[tag=c15] glowing 1 10 true

effect give @a[tag=cryoVote] glowing 2 10 true

###

# Update Text Displays ENDSCREEN

execute at @e[tag=endPos,limit=1] run tp @e[tag=marks] ~ ~-50 ~
execute if score endScreen gameStatus matches 0 run tp @e[tag=endPos] -269 0 -1610 -90 0
execute if score endScreen gameStatus matches 0 run tp @e[tag=endPos,limit=1] -269 0.5 -1610 -90 0
execute if score endScreen gameStatus matches 1 run tp @e[tag=endPos,limit=1] -269 87.5 -1610 -90 0
execute if score endScreen gameStatus matches 1 run tp @a -263 83 -1610 90 -5
execute if score endScreen gameStatus matches 1 run gamemode spectator @a

data merge entity @e[type=text_display,tag=endScores1,limit=1] {line_width:300,alignment:"left",Tags:["endScores1"],text:[{"selector":"@e[tag=mark-c1,limit=1]"},{"selector":"@a[tag=c1]"},{"text":"\n"},{"selector":"@e[tag=mark-c2,limit=1]"},{"selector":"@a[tag=c2]"},{"text":"\n"},{"selector":"@e[tag=mark-c3,limit=1]"},{"selector":"@a[tag=c3]"},{"text":"\n"},{"selector":"@e[tag=mark-c4,limit=1]"},{"selector":"@a[tag=c4]"},{"text":"\n"},{"selector":"@e[tag=mark-c5,limit=1]"},{"selector":"@a[tag=c5]"},{"text":"\n"},{"selector":"@e[tag=mark-c6,limit=1]"},{"selector":"@a[tag=c6]"},{"text":"\n"},{"selector":"@e[tag=mark-c7,limit=1]"},{"selector":"@a[tag=c7]"},{"text":"\n"},{"selector":"@e[tag=mark-c8,limit=1]"},{"selector":"@a[tag=c8]"},{"text":"\n"},{"selector":"@e[tag=mark-c9,limit=1]"},{"selector":"@a[tag=c9]"},{"text":"\n"},{"selector":"@e[tag=mark-c10,limit=1]"},{"selector":"@a[tag=c10]"},{"text":"\n"},{"selector":"@e[tag=mark-c11,limit=1]"},{"selector":"@a[tag=c11]"},{"text":"\n"},{"selector":"@e[tag=mark-c12,limit=1]"},{"selector":"@a[tag=c12]"},{"text":"\n"},{"selector":"@e[tag=mark-c13,limit=1]"},{"selector":"@a[tag=c13]"},{"text":"\n"},{"selector":"@e[tag=mark-c14,limit=1]"},{"selector":"@a[tag=c14]"},{"text":"\n"},{"selector":"@e[tag=mark-c15,limit=1]"},{"selector":"@a[tag=c15]"}]}
execute at @e[tag=endPos,limit=1] run tp @e[type=minecraft:text_display,tag=endScores1] ~ ~-4 ~ -90 0
#data merge entity @e[type=text_display,limit=1,sort=nearest,tag=endScores1] {Tags:["endScores1"],text:[{"selector":"@e[tag=c1]"},""],alignment:"left",billboard:"fixed",line_width:100}
#execute at @e[tag=endPos,limit=1] run tp @e[type=minecraft:text_display,tag=endScores2] ~ ~-.3 ~ -90 0
#data merge entity @e[type=text_display,limit=1,sort=nearest,tag=endScores2] {Tags:["endScores2"],text:[{"selector":"@e[tag=c2]"},""],alignment:"left",billboard:"fixed",line_width:100}
#execute at @e[tag=endPos,limit=1] run tp @e[type=minecraft:text_display,tag=endScores3] ~ ~-.6 ~ -90 0
#data merge entity @e[type=text_display,limit=1,sort=nearest,tag=endScores3] {Tags:["endScores3"],text:[{"selector":"@e[tag=c3]"},""],alignment:"left",billboard:"fixed"}
#execute at @e[tag=endPos,limit=1] run tp @e[type=minecraft:text_display,tag=endScores4] ~ ~-.9 ~ -90 0
#data merge entity @e[type=text_display,limit=1,sort=nearest,tag=endScores4] {Tags:["endScores4"],text:[{"selector":"@e[tag=c4]"},""],alignment:"left",billboard:"fixed"}
#execute at @e[tag=endPos,limit=1] run tp @e[type=minecraft:text_display,tag=endScores5] ~ ~-1.2 ~ -90 0
#data merge entity @e[type=text_display,limit=1,sort=nearest,tag=endScores5] {Tags:["endScores5"],text:[{"selector":"@e[tag=c5]"},""],alignment:"left",billboard:"fixed"}
#execute at @e[tag=endPos,limit=1] run tp @e[type=minecraft:text_display,tag=endScores6] ~ ~-1.5 ~ -90 0
#data merge entity @e[type=text_display,limit=1,sort=nearest,tag=endScores6] {Tags:["endScores6"],text:[{"selector":"@e[tag=c6]"},""],alignment:"left",billboard:"fixed"}
#execute at @e[tag=endPos,limit=1] run tp @e[type=minecraft:text_display,tag=endScores7] ~ ~-1.8 ~ -90 0
#data merge entity @e[type=text_display,limit=1,sort=nearest,tag=endScores7] {Tags:["endScores7"],text:[{"selector":"@e[tag=c7]"},""],alignment:"left",billboard:"fixed"}
#execute at @e[tag=endPos,limit=1] run tp @e[type=minecraft:text_display,tag=endScores8] ~ ~-2.1 ~ -90 0
#data merge entity @e[type=text_display,limit=1,sort=nearest,tag=endScores8] {Tags:["endScores8"],text:[{"selector":"@e[tag=c8]"},""],alignment:"left",billboard:"fixed"}
#execute at @e[tag=endPos,limit=1] run tp @e[type=minecraft:text_display,tag=endScores9] ~ ~-2.4 ~ -90 0
#data merge entity @e[type=text_display,limit=1,sort=nearest,tag=endScores9] {Tags:["endScores9"],text:[{"selector":"@e[tag=c9]"},""],alignment:"left",billboard:"fixed"}
#execute at @e[tag=endPos,limit=1] run tp @e[type=minecraft:text_display,tag=endScores10] ~ ~-2.7 ~ -90 0
#data merge entity @e[type=text_display,limit=1,sort=nearest,tag=endScores10] {Tags:["endScores10"],text:[{"selector":"@e[tag=c10]"},""],alignment:"left",billboard:"fixed"}
#execute at @e[tag=endPos,limit=1] run tp @e[type=minecraft:text_display,tag=endScores11] ~ ~-3 ~ -90 0
#data merge entity @e[type=text_display,limit=1,sort=nearest,tag=endScores11] {Tags:["endScores11"],text:[{"selector":"@e[tag=c11]"},""],alignment:"left",billboard:"fixed"}
#execute at @e[tag=endPos,limit=1] run tp @e[type=minecraft:text_display,tag=endScores12] ~ ~-3.3 ~ -90 0
#data merge entity @e[type=text_display,limit=1,sort=nearest,tag=endScores12] {Tags:["endScores12"],text:[{"selector":"@e[tag=c12]"},""],alignment:"left",billboard:"fixed"}
#execute at @e[tag=endPos,limit=1] run tp @e[type=minecraft:text_display,tag=endScores13] ~ ~-3.6 ~ -90 0
#data merge entity @e[type=text_display,limit=1,sort=nearest,tag=endScores13] {Tags:["endScores13"],text:[{"selector":"@e[tag=c13]"},""],alignment:"left",billboard:"fixed"}
#execute at @e[tag=endPos,limit=1] run tp @e[type=minecraft:text_display,tag=endScores14] ~ ~-3.9 ~ -90 0
#data merge entity @e[type=text_display,limit=1,sort=nearest,tag=endScores14] {Tags:["endScores14"],text:[{"selector":"@e[tag=c14]"},""],alignment:"left",billboard:"fixed"}
#execute at @e[tag=endPos,limit=1] run tp @e[type=minecraft:text_display,tag=endScores15] ~ ~-4.2 ~ -90 0
#data merge entity @e[type=text_display,limit=1,sort=nearest,tag=endScores15] {Tags:["endScores15"],text:[{"selector":"@e[tag=c15]"},""],alignment:"left",billboard:"fixed"}

gamemode adventure @a[gamemode=survival]

scoreboard players reset * playersOn

execute store result score @a[tag=c1] playersOn run execute if entity @a[tag=c1]
execute store result score @a[tag=c2] playersOn run execute if entity @a[tag=c2]
execute store result score @a[tag=c3] playersOn run execute if entity @a[tag=c3]
execute store result score @a[tag=c4] playersOn run execute if entity @a[tag=c4]
execute store result score @a[tag=c5] playersOn run execute if entity @a[tag=c5]
execute store result score @a[tag=c6] playersOn run execute if entity @a[tag=c6]
execute store result score @a[tag=c7] playersOn run execute if entity @a[tag=c7]
execute store result score @a[tag=c8] playersOn run execute if entity @a[tag=c8]
execute store result score @a[tag=c9] playersOn run execute if entity @a[tag=c9]
execute store result score @a[tag=c10] playersOn run execute if entity @a[tag=c10]
execute store result score @a[tag=c11] playersOn run execute if entity @a[tag=c11]
execute store result score @a[tag=c12] playersOn run execute if entity @a[tag=c12]
execute store result score @a[tag=c13] playersOn run execute if entity @a[tag=c13]
execute store result score @a[tag=c14] playersOn run execute if entity @a[tag=c14]
execute store result score @a[tag=c15] playersOn run execute if entity @a[tag=c15]

execute if score win winning-conditions matches 1 unless entity @a[tag=!dead,tag=!gnosia,gamemode=adventure] run function gnosia:phase/end-screen-delayed

# Sync Dead Players with Armor Stands

execute as @a[tag=c1,tag=!dead] run tag @e[type=armor_stand,tag=c1] remove dead
execute as @a[tag=c2,tag=!dead] run tag @e[type=armor_stand,tag=c2] remove dead
execute as @a[tag=c3,tag=!dead] run tag @e[type=armor_stand,tag=c3] remove dead
execute as @a[tag=c4,tag=!dead] run tag @e[type=armor_stand,tag=c4] remove dead
execute as @a[tag=c5,tag=!dead] run tag @e[type=armor_stand,tag=c5] remove dead
execute as @a[tag=c6,tag=!dead] run tag @e[type=armor_stand,tag=c6] remove dead
execute as @a[tag=c7,tag=!dead] run tag @e[type=armor_stand,tag=c7] remove dead
execute as @a[tag=c8,tag=!dead] run tag @e[type=armor_stand,tag=c8] remove dead
execute as @a[tag=c9,tag=!dead] run tag @e[type=armor_stand,tag=c9] remove dead
execute as @a[tag=c10,tag=!dead] run tag @e[type=armor_stand,tag=c10] remove dead
execute as @a[tag=c11,tag=!dead] run tag @e[type=armor_stand,tag=c11] remove dead
execute as @a[tag=c12,tag=!dead] run tag @e[type=armor_stand,tag=c12] remove dead
execute as @a[tag=c13,tag=!dead] run tag @e[type=armor_stand,tag=c13] remove dead
execute as @a[tag=c14,tag=!dead] run tag @e[type=armor_stand,tag=c14] remove dead
execute as @a[tag=c15,tag=!dead] run tag @e[type=armor_stand,tag=c15] remove dead

execute as @a[tag=c1,tag=dead] run tag @e[type=armor_stand,tag=c1] add dead
execute as @a[tag=c2,tag=dead] run tag @e[type=armor_stand,tag=c2] add dead
execute as @a[tag=c3,tag=dead] run tag @e[type=armor_stand,tag=c3] add dead
execute as @a[tag=c4,tag=dead] run tag @e[type=armor_stand,tag=c4] add dead
execute as @a[tag=c5,tag=dead] run tag @e[type=armor_stand,tag=c5] add dead
execute as @a[tag=c6,tag=dead] run tag @e[type=armor_stand,tag=c6] add dead
execute as @a[tag=c7,tag=dead] run tag @e[type=armor_stand,tag=c7] add dead
execute as @a[tag=c8,tag=dead] run tag @e[type=armor_stand,tag=c8] add dead
execute as @a[tag=c9,tag=dead] run tag @e[type=armor_stand,tag=c9] add dead
execute as @a[tag=c10,tag=dead] run tag @e[type=armor_stand,tag=c10] add dead
execute as @a[tag=c11,tag=dead] run tag @e[type=armor_stand,tag=c11] add dead
execute as @a[tag=c12,tag=dead] run tag @e[type=armor_stand,tag=c12] add dead
execute as @a[tag=c13,tag=dead] run tag @e[type=armor_stand,tag=c13] add dead
execute as @a[tag=c14,tag=dead] run tag @e[type=armor_stand,tag=c14] add dead
execute as @a[tag=c15,tag=dead] run tag @e[type=armor_stand,tag=c15] add dead

function gnosia:clic-clac

execute as @a[tag=!cryoVote,x=-179,y=64,z=-1582,dx=-21,dy=4,dz=4,gamemode=!spectator] run execute at @s run tp @s ~ ~-2 ~-4 0 0
scoreboard players set cryovoteAsleep temp 0
execute as @a[tag=cryoVote,x=-179,y=64,z=-1582,dx=-21,dy=4,dz=4,gamemode=!spectator] run scoreboard players add cryovoteAsleep temp 1

scoreboard players remove gnosParticle delay 1
execute if score gnosParticle delay matches ..0 as @a[tag=gnosia,tag=!dead,gamemode=adventure] at @s run particle minecraft:dust{color:[0.902f,0f,0.2235f],scale:0.6} ~ ~1 ~ 0.3 0.5 0.3 0 1 force @a[tag=gnosia,distance=0.1..]
execute if score gnosParticle delay matches ..0 run scoreboard players set gnosParticle delay 3