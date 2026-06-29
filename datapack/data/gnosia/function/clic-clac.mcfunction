execute if score resetAnimation delay matches 178.. run scoreboard players set resetAnimation delay -1
execute if score resetAnimation delay matches 0.. run execute at @e[limit=1,tag=resetParticlesOrigin] run particle minecraft:enchant ~ ~ ~ 1 0 0 10 0 force
execute if score resetAnimation delay matches 25.. run execute at @e[limit=1,tag=resetParticlesOrigin] run particle minecraft:enchant ~ ~-.5 ~-1 1 0 0 15 0 force
execute if score resetAnimation delay matches 30.. run execute at @e[limit=1,tag=resetParticlesOrigin] run particle minecraft:enchant ~ ~.5 ~-1.5 1 0 0 20 0 force
execute if score resetAnimation delay matches 35.. run execute at @e[limit=1,tag=resetParticlesOrigin] run particle minecraft:enchant ~ ~-.3 ~-1.5 1 0 0 25 0 force

execute if score resetAnimation delay matches 0.. run execute at @e[limit=1,tag=resetParticlesOrigin] run particle minecraft:enchant ~ ~ ~1 1 0 0 10 0 force
execute if score resetAnimation delay matches 30.. run execute at @e[limit=1,tag=resetParticlesOrigin] run particle minecraft:enchant ~ ~-.5 ~1.5 1 0 0 15 0 force
execute if score resetAnimation delay matches 35.. run execute at @e[limit=1,tag=resetParticlesOrigin] run particle minecraft:enchant ~ ~.5 ~2 1 0 0 20 0 force
execute if score resetAnimation delay matches 40.. run execute at @e[limit=1,tag=resetParticlesOrigin] run particle minecraft:enchant ~ ~-.3 ~2 1 0 0 25 0 force

execute if score resetAnimation delay matches 20.. run execute at @e[limit=1,tag=resetParticlesOrigin] run particle minecraft:enchant ~ ~.5 ~.5 1 0 0 10 0 force
execute if score resetAnimation delay matches 20.. run execute at @e[limit=1,tag=resetParticlesOrigin] run particle minecraft:enchant ~ ~-.5 ~.5 1 0 0 10 0 force

execute if score resetAnimation delay matches 60.. run execute at @e[limit=1,tag=resetParticlesOrigin] run particle minecraft:enchant ~2 ~.5 ~.2 1 0 0 10 0 force
execute if score resetAnimation delay matches 60.. run execute at @e[limit=1,tag=resetParticlesOrigin] run particle minecraft:enchant ~2 ~-.5 ~.2 1 0 0 10 0 force
execute if score resetAnimation delay matches 60.. run execute at @e[limit=1,tag=resetParticlesOrigin] run particle minecraft:enchant ~2 ~.5 ~.8 1 0 0 10 0 force
execute if score resetAnimation delay matches 60.. run execute at @e[limit=1,tag=resetParticlesOrigin] run particle minecraft:enchant ~2 ~-.5 ~.8 1 0 0 10 0 force

execute if score resetAnimation delay matches 100.. run execute at @e[limit=1,tag=resetParticlesOrigin] run particle enchant ~11 ~ ~.5 .4 .4 .4 2 1 normal
execute if score resetAnimation delay matches 120.. run execute at @e[limit=1,tag=resetParticlesOrigin] run particle enchant ~11 ~ ~.5 .4 .4 .4 2 50 normal
execute if score resetAnimation delay matches 130.. run execute at @e[limit=1,tag=resetParticlesOrigin] run particle enchant ~11 ~ ~.5 .2 .2 .2 3 150 normal
execute if score resetAnimation delay matches 140.. run execute at @e[limit=1,tag=resetParticlesOrigin] run particle enchant ~11 ~ ~.5 1 1 1 3 200 normal
execute if score resetAnimation delay matches 150.. run execute at @e[limit=1,tag=resetParticlesOrigin] run particle enchant ~11 ~ ~.5 1 1 1 5 300 normal
execute if score resetAnimation delay matches 176 run title @a times 0 2 3
execute if score resetAnimation delay matches 176 run title @a title {"text":"█","font":"gnosia:blackfade"}

execute if score resetAnimation delay matches 177 run function gnosia:start-game
#execute if score resetAnimation delay matches 177 run tellraw @a "SOS"


execute if score resetAnimation delay matches 15 run effect give @a[tag=resetanim] minecraft:blindness 10 1 true
execute if score resetAnimation delay matches 0.. run scoreboard players add resetAnimation delay 1

execute if score resetAnimation delay matches 1 run title @a times 10 10 0
execute if score resetAnimation delay matches 1 run title @a title {"text":"█","font":"gnosia:blackfade"}
execute if score resetAnimation delay matches 11 run gamemode spectator @a[tag=resetanim]
execute if score resetAnimation delay matches 20 run execute at @e[tag=resetParticlesOrigin] run tp @a[tag=resetanim] ~10 ~-1.6 ~.5 180 0
execute if score resetAnimation delay matches 21..70 run execute as @a[tag=resetanim] run execute at @s run tp @s ~-.01 ~ ~
execute if score resetAnimation delay matches 70..77 run execute as @a[tag=resetanim] run execute at @s run tp @s ~-.1 ~ ~ ~9 ~
execute if score resetAnimation delay matches 78..79 run execute as @a[tag=resetanim] run execute at @s run tp @s ~-.1 ~ ~ ~4.5 ~
execute if score resetAnimation delay matches 80..83 run execute as @a[tag=resetanim] run execute at @s run tp @s ~-.1 ~ ~ ~2.25 ~


