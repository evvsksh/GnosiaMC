execute if score engSearch gnosiaKillChoose matches 1 as @e[tag=playerDummy,tag=c1,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 2 as @e[tag=playerDummy,tag=c2,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 3 as @e[tag=playerDummy,tag=c3,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 4 as @e[tag=playerDummy,tag=c4,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 5 as @e[tag=playerDummy,tag=c5,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 6 as @e[tag=playerDummy,tag=c6,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 7 as @e[tag=playerDummy,tag=c7,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 8 as @e[tag=playerDummy,tag=c8,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 9 as @e[tag=playerDummy,tag=c9,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 10 as @e[tag=playerDummy,tag=c10,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 11 as @e[tag=playerDummy,tag=c11,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 12 as @e[tag=playerDummy,tag=c12,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 13 as @e[tag=playerDummy,tag=c13,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 14 as @e[tag=playerDummy,tag=c14,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 15 as @e[tag=playerDummy,tag=c15,tag=bug,tag=!dead] run tag @s add engBugTemp

tag @e[tag=engBugTemp] add deathReport
tag @e[tag=engBugTemp] add gnosiaElimination
tag @e[tag=engBugTemp] add dead
execute as @e[tag=engBugTemp] run function gnosia:synchronize_dummies
tag @e[tag=engBugTemp] remove engBugTemp