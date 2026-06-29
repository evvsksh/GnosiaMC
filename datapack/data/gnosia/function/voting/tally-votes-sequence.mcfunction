tp @e[tag=votePos] -269 87.5 -1610 0 0
execute at @e[type=minecraft:armor_stand,tag=votePos,limit=1] run tp @e[tag=cryosleepPos] ~ ~-1.5 ~2.5
scoreboard players set voteCheck voteCheck 1
#function gnosia:phase/count-alive
scoreboard players operation playerThreshold rolesCheck = playersAlive rolesCheck
scoreboard players add playerThreshold rolesCheck 1
scoreboard players set @e[tag=disconnect,type=armor_stand] vote 0