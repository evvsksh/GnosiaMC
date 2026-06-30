execute if score gnosiaKillChoose gnosiaKillChoose matches 1 run tag @a[tag=c1] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 2 run tag @a[tag=c2] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 3 run tag @a[tag=c3] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 4 run tag @a[tag=c4] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 5 run tag @a[tag=c5] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 6 run tag @a[tag=c6] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 7 run tag @a[tag=c7] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 8 run tag @a[tag=c8] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 9 run tag @a[tag=c9] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 10 run tag @a[tag=c10] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 11 run tag @a[tag=c11] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 12 run tag @a[tag=c12] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 13 run tag @a[tag=c13] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 14 run tag @a[tag=c14] add gnosiaEliminationTemp
execute if score gnosiaKillChoose gnosiaKillChoose matches 15 run tag @a[tag=c15] add gnosiaEliminationTemp

tag @a[tag=gnosiaEliminationTemp] add deathReport
tag @a[tag=gnosiaEliminationTemp] add gnosiaElimination
tag @a[tag=gnosiaEliminationTemp] remove gnosiaEliminationTemp

kill @a[tag=gnosiaElimination,tag=!dead]

schedule function gnosia:kill-glitch-sfx 5.5s
#function gnosia:phase/count-alive
#function gnosia:phase/count-roles
scoreboard players set gnosiaKillChoose gnosiaKillChoose 0
scoreboard players set angelSave gnosiaKillChoose 0






