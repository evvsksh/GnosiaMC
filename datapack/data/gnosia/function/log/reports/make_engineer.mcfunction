execute if score @s reportRole matches 1 run function gnosia:log/reports/human_engineer
execute if score @s reportRole matches 2 run function gnosia:log/reports/gnosia_engineer

scoreboard players set @s reportTarget 0
scoreboard players set @s reportRole 0
tag @s add reportMade