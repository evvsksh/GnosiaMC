tag @r[tag=crew,scores={playersID=0}] add idAssignment

scoreboard players operation @a[tag=idAssignment] playersID > @a playersID
scoreboard players add @a[tag=idAssignment] playersID 1

tag @a remove idAssignment

execute if entity @a[tag=crew,scores={playersID=0}] run function gnosia:phase/start/assign-c-roles