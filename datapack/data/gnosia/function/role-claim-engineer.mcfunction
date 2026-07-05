execute if entity @s[tag=cantClaim] run tellraw @s {"text":"You have already claimed","color":"red"}
execute if entity @s[tag=!cantClaim] unless score showRoleActionbar gameStatus matches 1 run tellraw @s {"text":"You can't claim outside of meetings","color":"red"}

execute if entity @s[tag=!cantClaim] if score showRoleActionbar gameStatus matches 1 run function gnosia:log/reports/group/prepare_engineer_claim
execute if entity @s[tag=!cantClaim] if score showRoleActionbar gameStatus matches 1 run team join engineer_claim
execute if entity @s[tag=!cantClaim] if score showRoleActionbar gameStatus matches 1 run playsound gnosia:reveal-role player @a ~ ~ ~ 1 1 1
execute if entity @s[tag=!cantClaim] if score showRoleActionbar gameStatus matches 1 run scoreboard players set engineer claimStatus 1
execute if entity @s[tag=!cantClaim] if score showRoleActionbar gameStatus matches 1 run function gnosia:log/reports/index_update_role_engineer
execute if entity @s[tag=!cantClaim] if score showRoleActionbar gameStatus matches 1 run tag @s add cantClaim