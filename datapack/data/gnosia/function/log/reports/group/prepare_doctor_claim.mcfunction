execute unless score reportPage logState matches 1 run function gnosia:log/reports/insert_report_page
execute unless score doctorHover logState matches 1 run function gnosia:log/reports/generate/doctor/hover

scoreboard players operation @s doctorID > * doctorID
scoreboard players add @s doctorID 1

function gnosia:mark_player_dummy
scoreboard players operation @e[tag=dummy_marker] doctorDummyID = @s doctorID

tag @s add reportMade

function gnosia:log/reports/generate/doctor/claimants
function gnosia:log/reports/generate/doctor/numbers
function gnosia:log/event/claim_doctor

function gnosia:log/reports/generate/retroactive/doctor_data
execute if data block -300 88 -1610 Items[{Slot:2b}].components."minecraft:custom_data".doctorList[0] run function gnosia:log/reports/generate/retroactive/book/doctor/distribute

team join doctor_claim
team join doctor_claim @e[tag=dummy_marker]
playsound gnosia:reveal-role player @a ~ ~ ~ 1 1 1
scoreboard players set doctor claimStatus 1
execute as @e[tag=dummy_marker] run function gnosia:log/reports/index_update_role_doctor
tag @s add cantClaim
tag @e[tag=dummy_marker] remove dummy_marker