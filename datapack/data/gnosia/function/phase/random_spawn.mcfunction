tp @s @e[sort=random,limit=1,tag=crewSpawn,tag=!randomSpawnTaken]
execute at @s run tag @e[sort=nearest,limit=1,tag=crewSpawn] add randomSpawnTaken