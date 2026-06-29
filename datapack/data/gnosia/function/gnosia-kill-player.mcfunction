execute if score gnosiaKillChoose gnosiaKillChoose matches 1 run tag @a[tag=c1] add gnosiaElimination
execute if score gnosiaKillChoose gnosiaKillChoose matches 2 run tag @a[tag=c2] add gnosiaElimination
execute if score gnosiaKillChoose gnosiaKillChoose matches 3 run tag @a[tag=c3] add gnosiaElimination
execute if score gnosiaKillChoose gnosiaKillChoose matches 4 run tag @a[tag=c4] add gnosiaElimination
execute if score gnosiaKillChoose gnosiaKillChoose matches 5 run tag @a[tag=c5] add gnosiaElimination
execute if score gnosiaKillChoose gnosiaKillChoose matches 6 run tag @a[tag=c6] add gnosiaElimination
execute if score gnosiaKillChoose gnosiaKillChoose matches 7 run tag @a[tag=c7] add gnosiaElimination
execute if score gnosiaKillChoose gnosiaKillChoose matches 8 run tag @a[tag=c8] add gnosiaElimination
execute if score gnosiaKillChoose gnosiaKillChoose matches 9 run tag @a[tag=c9] add gnosiaElimination
execute if score gnosiaKillChoose gnosiaKillChoose matches 10 run tag @a[tag=c10] add gnosiaElimination
execute if score gnosiaKillChoose gnosiaKillChoose matches 11 run tag @a[tag=c11] add gnosiaElimination
execute if score gnosiaKillChoose gnosiaKillChoose matches 12 run tag @a[tag=c12] add gnosiaElimination
execute if score gnosiaKillChoose gnosiaKillChoose matches 13 run tag @a[tag=c13] add gnosiaElimination
execute if score gnosiaKillChoose gnosiaKillChoose matches 14 run tag @a[tag=c14] add gnosiaElimination
execute if score gnosiaKillChoose gnosiaKillChoose matches 15 run tag @a[tag=c15] add gnosiaElimination

kill @a[tag=gnosiaElimination,tag=!dead]

schedule function gnosia:kill-glitch-sfx 5.5s
#function gnosia:phase/count-alive
#function gnosia:phase/count-roles
scoreboard players set gnosiaKillChoose gnosiaKillChoose 0
scoreboard players set angelSave gnosiaKillChoose 0






