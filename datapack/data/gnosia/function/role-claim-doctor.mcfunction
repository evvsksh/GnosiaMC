execute if entity @s[tag=cantClaim] run tellraw @s {"text":"You have already claimed","color":"red"}
execute if entity @s[tag=!cantClaim] unless score showRoleActionbar gameStatus matches 1 run tellraw @s {"text":"You can't claim outside of meetings","color":"red"}

execute if entity @s[tag=!cantClaim] if score showRoleActionbar gameStatus matches 1 run function gnosia:log/reports/group/prepare_doctor_claim
execute if entity @s[tag=!cantClaim] if score showRoleActionbar gameStatus matches 1 run team join doctor_claim
execute if entity @s[tag=!cantClaim] if score showRoleActionbar gameStatus matches 1 run playsound gnosia:reveal-role player @a ~ ~ ~ 1 1 1
execute if entity @s[tag=!cantClaim] if score showRoleActionbar gameStatus matches 1 run scoreboard players set doctor claimStatus 1
execute if entity @s[tag=!cantClaim] if score showRoleActionbar gameStatus matches 1 if score @s logReportIndexEngineer matches 1.. run function gnosia:log/reports/index_update_role_doctor
execute if entity @s[tag=!cantClaim] if score showRoleActionbar gameStatus matches 1 run tag @s add cantClaim