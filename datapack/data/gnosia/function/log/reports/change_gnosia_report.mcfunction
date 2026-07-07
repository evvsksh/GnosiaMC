execute if score @s reportTarget matches 1 if score @s reportRole matches 2 if entity @e[tag=playerDummy,tag=gnosiaElimination,tag=c1] run tag @s add change_report
execute if score @s reportTarget matches 2 if score @s reportRole matches 2 if entity @e[tag=playerDummy,tag=gnosiaElimination,tag=c2] run tag @s add change_report
execute if score @s reportTarget matches 3 if score @s reportRole matches 2 if entity @e[tag=playerDummy,tag=gnosiaElimination,tag=c3] run tag @s add change_report
execute if score @s reportTarget matches 4 if score @s reportRole matches 2 if entity @e[tag=playerDummy,tag=gnosiaElimination,tag=c4] run tag @s add change_report
execute if score @s reportTarget matches 5 if score @s reportRole matches 2 if entity @e[tag=playerDummy,tag=gnosiaElimination,tag=c5] run tag @s add change_report
execute if score @s reportTarget matches 6 if score @s reportRole matches 2 if entity @e[tag=playerDummy,tag=gnosiaElimination,tag=c6] run tag @s add change_report
execute if score @s reportTarget matches 7 if score @s reportRole matches 2 if entity @e[tag=playerDummy,tag=gnosiaElimination,tag=c7] run tag @s add change_report
execute if score @s reportTarget matches 8 if score @s reportRole matches 2 if entity @e[tag=playerDummy,tag=gnosiaElimination,tag=c8] run tag @s add change_report
execute if score @s reportTarget matches 9 if score @s reportRole matches 2 if entity @e[tag=playerDummy,tag=gnosiaElimination,tag=c9] run tag @s add change_report
execute if score @s reportTarget matches 10 if score @s reportRole matches 2 if entity @e[tag=playerDummy,tag=gnosiaElimination,tag=c10] run tag @s add change_report
execute if score @s reportTarget matches 11 if score @s reportRole matches 2 if entity @e[tag=playerDummy,tag=gnosiaElimination,tag=c11] run tag @s add change_report
execute if score @s reportTarget matches 12 if score @s reportRole matches 2 if entity @e[tag=playerDummy,tag=gnosiaElimination,tag=c12] run tag @s add change_report
execute if score @s reportTarget matches 13 if score @s reportRole matches 2 if entity @e[tag=playerDummy,tag=gnosiaElimination,tag=c13] run tag @s add change_report
execute if score @s reportTarget matches 14 if score @s reportRole matches 2 if entity @e[tag=playerDummy,tag=gnosiaElimination,tag=c14] run tag @s add change_report
execute if score @s reportTarget matches 15 if score @s reportRole matches 2 if entity @e[tag=playerDummy,tag=gnosiaElimination,tag=c15] run tag @s add change_report

execute if entity @s[tag=change_report] run scoreboard players set @s reportRole 1
execute if entity @s[tag=change_report] run tellraw @s {color:aqua,text:"Your report target disappeared last night. They cannot be Gnosia, so you will report them as Human instead."}

tag @a remove change_report