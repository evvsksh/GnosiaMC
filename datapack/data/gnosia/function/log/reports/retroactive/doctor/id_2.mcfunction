execute unless score @s doctorReportHuman = @s correctReportID unless score @s doctorReportGnosia = @s correctReportID run tag @s add invalid_target
execute if entity @s[tag=doctor] if score @s doctorReportHuman matches 1.. unless score @s correctReportResult matches 1 run tag @s add invalid_target
execute if entity @s[tag=doctor] if score @s doctorReportGnosia matches 1.. unless score @s correctReportResult matches 2 run tag @s add invalid_target

execute if entity @s[tag=invalid_target] run tellraw @s {color:red,text:"Invalid Selection"}

execute unless entity @s[tag=invalid_target] if score @s doctorReportHuman matches 1.. run scoreboard players operation @s reportTarget = @s doctorReportHuman
execute unless entity @s[tag=invalid_target] if score @s doctorReportGnosia matches 1.. run scoreboard players operation @s reportTarget = @s doctorReportGnosia

execute unless entity @s[tag=invalid_target] if score @s doctorReportHuman matches 1.. run function gnosia:log/reports/human_doctor
execute unless entity @s[tag=invalid_target] if score @s doctorReportGnosia matches 1.. run function gnosia:log/reports/gnosia_doctor

execute unless entity @s[tag=invalid_target] run clear @s minecraft:written_book[minecraft:custom_data~{retroactiveReportBook:1b}]
execute unless entity @s[tag=invalid_target] run data remove block -300 88 -1610 Items[{Slot:19b}].components."minecraft:custom_data".doctorList[0]
execute unless entity @s[tag=invalid_target] if data block -300 88 -1610 Items[{Slot:19b}].components."minecraft:custom_data".doctorList[0] run function gnosia:log/reports/generate/retroactive/book/doctor/distribute

scoreboard players set @s reportTarget 0
tag @s remove invalid_target