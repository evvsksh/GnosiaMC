execute if score gnosiaKillChoose gnosiaKillChoose matches 1 run tag @e[tag=playerDummy,tag=c1] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 2 run tag @e[tag=playerDummy,tag=c2] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 3 run tag @e[tag=playerDummy,tag=c3] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 4 run tag @e[tag=playerDummy,tag=c4] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 5 run tag @e[tag=playerDummy,tag=c5] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 6 run tag @e[tag=playerDummy,tag=c6] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 7 run tag @e[tag=playerDummy,tag=c7] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 8 run tag @e[tag=playerDummy,tag=c8] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 9 run tag @e[tag=playerDummy,tag=c9] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 10 run tag @e[tag=playerDummy,tag=c10] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 11 run tag @e[tag=playerDummy,tag=c11] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 12 run tag @e[tag=playerDummy,tag=c12] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 13 run tag @e[tag=playerDummy,tag=c13] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 14 run tag @e[tag=playerDummy,tag=c14] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 15 run tag @e[tag=playerDummy,tag=c15] add gnosiaEliminationTemp

tag @e[tag=gnosiaEliminationTemp] add deathReport
tag @e[tag=gnosiaEliminationTemp] add gnosiaElimination
tag @e[tag=gnosiaEliminationTemp] add dead
execute as @e[tag=gnosiaEliminationTemp] run function gnosia:synchronize_dummies
execute as @e[tag=gnosiaEliminationTemp] run function gnosia:log/reports/color_killed
tag @e[tag=gnosiaEliminationTemp] remove gnosiaEliminationTemp

scoreboard players set gnosiaKillChoose gnosiaKillChoose 0
scoreboard players set angelSave gnosiaKillChoose 0