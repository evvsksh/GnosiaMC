execute unless score reportPage logState matches 1 run function gnosia:log/reports/insert_report_page
execute unless score engineerHover logState matches 1 run function gnosia:log/reports/generate/engineer/hover

scoreboard players operation @s engineerID > * engineerID
scoreboard players add @s engineerID 1

function gnosia:mark_player_dummy
scoreboard players operation @e[tag=dummy_marker] engineerDummyID = @s engineerID

tag @s add reportMade

function gnosia:log/reports/generate/engineer/claimants
function gnosia:log/reports/generate/engineer/numbers
function gnosia:log/event/claim_engineer

tellraw @a {color:"#187fc4",selector:"@e[tag=dummy_marker]",extra:[{text:" has stepped forward as the Engineer."}]}
function gnosia:log/reports/generate/retroactive/engineer_data
execute if data block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".engineerList[0] run function gnosia:log/reports/generate/retroactive/book/engineer/distribute

team join engineer_claim
team join engineer_claim @e[tag=dummy_marker]
playsound gnosia:reveal-role player @a ~ ~ ~ 1 1 1
scoreboard players set engineer claimStatus 1
execute as @e[tag=dummy_marker] run function gnosia:log/reports/index_update_role_engineer
tag @s add cantClaim
tag @e[tag=dummy_marker] remove dummy_marker