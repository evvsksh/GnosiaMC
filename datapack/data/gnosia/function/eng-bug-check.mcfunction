execute if score engSearch gnosiaKillChoose matches 1 as @a[tag=c1,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 2 as @a[tag=c2,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 3 as @a[tag=c3,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 4 as @a[tag=c4,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 5 as @a[tag=c5,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 6 as @a[tag=c6,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 7 as @a[tag=c7,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 8 as @a[tag=c8,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 9 as @a[tag=c9,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 10 as @a[tag=c10,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 11 as @a[tag=c11,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 12 as @a[tag=c12,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 13 as @a[tag=c13,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 14 as @a[tag=c14,tag=bug,tag=!dead] run tag @s add engBugTemp
execute if score engSearch gnosiaKillChoose matches 15 as @a[tag=c15,tag=bug,tag=!dead] run tag @s add engBugTemp

tag @a[tag=engBugTemp] add deathReport
tag @a[tag=engBugTemp] add gnosiaElimination
tag @a[tag=engBugTemp] add dead
tag @a[tag=engBugTemp] remove engBugTemp