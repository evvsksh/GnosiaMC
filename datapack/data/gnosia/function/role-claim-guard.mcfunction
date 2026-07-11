tag @s add checkForOtherGuard
function gnosia:mark_player_dummy
tag @e[tag=dummy_marker] add checkForOtherGuard
execute if entity @s[tag=cantClaim] run tellraw @s {"text":"You have already claimed","color":"red"}
execute if entity @s[tag=!cantClaim] unless entity @e[tag=playerDummy,tag=guard,tag=!checkForOtherGuard,tag=!dead] run tellraw @s {"text":"The other Guard Duty cannot confirm you","color":"red"}
execute if entity @s[tag=!cantClaim] if entity @e[tag=playerDummy,tag=guard,tag=!checkForOtherGuard,tag=!dead] unless score showRoleActionbar gameStatus matches 1 run tellraw @s {"text":"You can't claim outside of meetings","color":"red"}

execute if entity @s[tag=!cantClaim] if entity @e[tag=playerDummy,tag=guard,tag=!checkForOtherGuard,tag=!dead] if score showRoleActionbar gameStatus matches 1 run function gnosia:log/event/claim_guard
execute if entity @s[tag=!cantClaim] if entity @e[tag=playerDummy,tag=guard,tag=!checkForOtherGuard,tag=!dead] if score showRoleActionbar gameStatus matches 1 as @e[tag=playerDummy,tag=guard,tag=!dead] run tellraw @a {color:"#46b035",selector:"@s",extra:[{text:" has stepped forward as Guard Duty."}]}
execute if entity @s[tag=!cantClaim] if entity @e[tag=playerDummy,tag=guard,tag=!checkForOtherGuard,tag=!dead] if score showRoleActionbar gameStatus matches 1 as @e[tag=playerDummy,tag=guard,tag=!checkForOtherGuard,tag=!dead] run function gnosia:log/event/claim_guard
execute if entity @s[tag=!cantClaim] if entity @e[tag=playerDummy,tag=guard,tag=!checkForOtherGuard,tag=!dead] if score showRoleActionbar gameStatus matches 1 run team join guard_duty @e[tag=guard,tag=!dead]
execute if entity @s[tag=!cantClaim] if entity @e[tag=playerDummy,tag=guard,tag=!checkForOtherGuard,tag=!dead] if score showRoleActionbar gameStatus matches 1 run playsound gnosia:reveal-role player @a ~ ~ ~ 1 1 1
execute if entity @s[tag=!cantClaim] if entity @e[tag=playerDummy,tag=guard,tag=!checkForOtherGuard,tag=!dead] if score showRoleActionbar gameStatus matches 1 run scoreboard players set guardDuty claimStatus 1
execute if entity @s[tag=!cantClaim] if entity @e[tag=playerDummy,tag=guard,tag=!checkForOtherGuard,tag=!dead] if score showRoleActionbar gameStatus matches 1 as @e[tag=playerDummy,tag=guard,tag=!dead] run function gnosia:log/reports/index_update_role_guard
execute if entity @s[tag=!cantClaim] if entity @e[tag=playerDummy,tag=guard,tag=!checkForOtherGuard,tag=!dead] if score showRoleActionbar gameStatus matches 1 run tag @a[tag=guard,tag=!dead] add cantClaim
tag @s remove checkForOtherGuard
tag @e[tag=dummy_marker] remove dummy_marker