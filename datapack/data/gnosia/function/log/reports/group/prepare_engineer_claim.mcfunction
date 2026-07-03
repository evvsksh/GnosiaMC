execute unless score reportPage logState matches 1 run function gnosia:log/reports/insert_report_page
execute unless score engineerHover logState matches 1 run function gnosia:log/reports/generate/engineer/hover

scoreboard players operation @s engineerID > * engineerID
scoreboard players add @s engineerID 1

tag @s add reportMade

function gnosia:log/reports/generate/engineer/claimants
function gnosia:log/reports/generate/engineer/numbers
function gnosia:log/event/claim_engineer

function gnosia:log/reports/generate/retroactive/engineer_data
execute if data block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".engineerList[0] run function gnosia:log/reports/generate/retroactive/book/engineer/distribute