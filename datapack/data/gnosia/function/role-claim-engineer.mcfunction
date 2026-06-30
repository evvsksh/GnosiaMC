execute if entity @s[tag=cantClaim] run tellraw @s {"text":"You have already claimed","color":"red"}
execute if entity @s[tag=!cantClaim] unless score showRoleActionbar gameStatus matches 1 run tellraw @s {"text":"You can't claim outside of meetings","color":"red"}

execute if entity @s[tag=!cantClaim] if score showRoleActionbar gameStatus matches 1 run function gnosia:log/event/claim_engineer
execute if entity @s[tag=!cantClaim] if score showRoleActionbar gameStatus matches 1 run team join engineer_claim
execute if entity @s[tag=!cantClaim] if score showRoleActionbar gameStatus matches 1 run playsound gnosia:reveal-role player @a ~ ~ ~ 1 1 1
execute if entity @s[tag=!cantClaim] if score showRoleActionbar gameStatus matches 1 run scoreboard players set engineer claimStatus 1
execute if entity @s[tag=!cantClaim] if score showRoleActionbar gameStatus matches 1 run tag @s add cantClaim