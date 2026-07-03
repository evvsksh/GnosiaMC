execute unless score reportPage logState matches 1 run function gnosia:log/reports/insert_report_page
execute unless score doctorHover logState matches 1 run function gnosia:log/reports/generate/doctor/hover

scoreboard players operation @s doctorID > * doctorID
scoreboard players add @s doctorID 1

tag @s add reportMade

function gnosia:log/reports/generate/doctor/claimants
function gnosia:log/reports/generate/doctor/numbers
function gnosia:log/event/claim_doctor

function gnosia:log/reports/generate/retroactive/doctor_data
execute if data block -300 88 -1610 Items[{Slot:2b}].components."minecraft:custom_data".doctorList[0] run function gnosia:log/reports/generate/retroactive/book/doctor/distribute