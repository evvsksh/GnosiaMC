execute as @a[tag=crew,tag=!dead] run function gnosia:phase/random_spawn
tag @e[tag=randomSpawnTaken] remove randomSpawnTaken
tp @a[gamemode=spectator] @r[tag=crew,tag=!dead]