scoreboard players operation tempMaxGamesSpectated temp > @a[scores={spectatorVolunteerStorage=0}] consecutiveGamesSpectated

execute as @a[scores={spectatorVolunteerStorage=0}] if score @s consecutiveGamesSpectated = tempMaxGamesSpectated temp run tag @s add gameCandidate
tag @r[tag=gameCandidate] add gameSelected
tag @a[tag=gameSelected] add crew
scoreboard players set @a[tag=gameSelected] consecutiveGamesSpectated 0
scoreboard players set tempMaxGamesSpectated temp 0
tag @a remove gameCandidate
tag @a remove gameSelected

execute store result score tempCrewCount temp if entity @a[tag=crew]
execute if entity @a[tag=!crew,scores={spectatorVolunteerStorage=0}] unless score tempCrewCount temp matches 15 run function gnosia:phase/start/determine_players