execute if score startLore loreSequence matches 0.. run scoreboard players add startLore loreSequence 1
execute if score startLore loreSequence matches 0..400 run gamemode spectator @a
execute if score startLore loreSequence matches 10..400 run tp @a -61.34 106.00 -1655.55 -103 15

execute if score startLore loreSequence matches 5 run playsound gnosia:ost.remind-me record @a ~ ~ ~ 1 1 1

execute if score startLore loreSequence matches 5 run title @a times 0 150 3
execute if score startLore loreSequence matches 5 run title @a title {"text":"█","font":"gnosia:blackfade"}
execute if score startLore loreSequence matches 5 run title @a subtitle {"color":"aqua","text":"GnosiaMC"}

execute if score startLore loreSequence matches 5 run title @a actionbar {"color":"aqua","text":"GnosiaMC"}
