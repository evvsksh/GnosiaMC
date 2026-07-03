execute if entity @s[tag=engineer] unless score @s engineerReportHuman = @s correctReportID unless score @s engineerReportGnosia = @s correctReportID run tag @s add invalid_target
execute if entity @s[tag=engineer] if score @s engineerReportHuman matches 1.. unless score @s correctReportResult matches 1 run tag @s add invalid_target
execute if entity @s[tag=engineer] if score @s engineerReportGnosia matches 1.. unless score @s correctReportResult matches 2 run tag @s add invalid_target

execute if score @s engineerReportGnosia matches 1 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:1i}] run tag @s add invalid_target
execute if score @s engineerReportGnosia matches 2 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:2i}] run tag @s add invalid_target
execute if score @s engineerReportGnosia matches 3 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:3i}] run tag @s add invalid_target
execute if score @s engineerReportGnosia matches 4 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:4i}] run tag @s add invalid_target
execute if score @s engineerReportGnosia matches 5 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:5i}] run tag @s add invalid_target
execute if score @s engineerReportGnosia matches 6 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:6i}] run tag @s add invalid_target
execute if score @s engineerReportGnosia matches 7 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:7i}] run tag @s add invalid_target
execute if score @s engineerReportGnosia matches 8 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:8i}] run tag @s add invalid_target
execute if score @s engineerReportGnosia matches 9 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:9i}] run tag @s add invalid_target
execute if score @s engineerReportGnosia matches 10 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:10i}] run tag @s add invalid_target
execute if score @s engineerReportGnosia matches 11 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:11i}] run tag @s add invalid_target
execute if score @s engineerReportGnosia matches 12 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:12i}] run tag @s add invalid_target
execute if score @s engineerReportGnosia matches 13 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:13i}] run tag @s add invalid_target
execute if score @s engineerReportGnosia matches 14 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:14i}] run tag @s add invalid_target
execute if score @s engineerReportGnosia matches 15 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:15i}] run tag @s add invalid_target

execute if score @s engineerReportHuman matches 1 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:1i}] run tag @s add invalid_target
execute if score @s engineerReportHuman matches 2 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:2i}] run tag @s add invalid_target
execute if score @s engineerReportHuman matches 3 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:3i}] run tag @s add invalid_target
execute if score @s engineerReportHuman matches 4 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:4i}] run tag @s add invalid_target
execute if score @s engineerReportHuman matches 5 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:5i}] run tag @s add invalid_target
execute if score @s engineerReportHuman matches 6 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:6i}] run tag @s add invalid_target
execute if score @s engineerReportHuman matches 7 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:7i}] run tag @s add invalid_target
execute if score @s engineerReportHuman matches 8 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:8i}] run tag @s add invalid_target
execute if score @s engineerReportHuman matches 9 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:9i}] run tag @s add invalid_target
execute if score @s engineerReportHuman matches 10 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:10i}] run tag @s add invalid_target
execute if score @s engineerReportHuman matches 11 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:11i}] run tag @s add invalid_target
execute if score @s engineerReportHuman matches 12 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:12i}] run tag @s add invalid_target
execute if score @s engineerReportHuman matches 13 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:13i}] run tag @s add invalid_target
execute if score @s engineerReportHuman matches 14 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:14i}] run tag @s add invalid_target
execute if score @s engineerReportHuman matches 15 unless data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0].checkable[{id:15i}] run tag @s add invalid_target

execute if entity @s[tag=invalid_target] run tellraw @s {color:red,text:"Invalid Selection"}

execute unless entity @s[tag=invalid_target] if score @s engineerReportHuman matches 1.. run scoreboard players operation @s reportTarget = @s engineerReportHuman
execute unless entity @s[tag=invalid_target] if score @s engineerReportGnosia matches 1.. run scoreboard players operation @s reportTarget = @s engineerReportGnosia

execute unless entity @s[tag=invalid_target] if score @s engineerReportHuman matches 1.. run function gnosia:log/reports/human_engineer
execute unless entity @s[tag=invalid_target] if score @s engineerReportGnosia matches 1.. run function gnosia:log/reports/gnosia_engineer

execute unless entity @s[tag=invalid_target] run data modify block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[2] append value {id:0i,Marker:0b}
execute unless entity @s[tag=invalid_target] store result block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[2][-1].id int 1 run scoreboard players get @s reportTarget

execute unless entity @s[tag=invalid_target] run clear @s minecraft:written_book[minecraft:custom_data~{retroactiveReportBook:1b}]
execute unless entity @s[tag=invalid_target] run data remove block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0]
execute unless entity @s[tag=invalid_target] if data block -300 88 -1610 Items[{Slot:10b}].components."minecraft:custom_data".engineerList[0] run function gnosia:log/reports/generate/retroactive/book/engineer/distribute

scoreboard players set @s reportTarget 0
tag @s remove invalid_target