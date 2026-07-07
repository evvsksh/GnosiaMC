execute if entity @s[tag=c1] run tag @e[tag=playerDummy,tag=c1] add get_dummy_role
execute if entity @s[tag=c2] run tag @e[tag=playerDummy,tag=c2] add get_dummy_role
execute if entity @s[tag=c3] run tag @e[tag=playerDummy,tag=c3] add get_dummy_role
execute if entity @s[tag=c4] run tag @e[tag=playerDummy,tag=c4] add get_dummy_role
execute if entity @s[tag=c5] run tag @e[tag=playerDummy,tag=c5] add get_dummy_role
execute if entity @s[tag=c6] run tag @e[tag=playerDummy,tag=c6] add get_dummy_role
execute if entity @s[tag=c7] run tag @e[tag=playerDummy,tag=c7] add get_dummy_role
execute if entity @s[tag=c8] run tag @e[tag=playerDummy,tag=c8] add get_dummy_role
execute if entity @s[tag=c9] run tag @e[tag=playerDummy,tag=c9] add get_dummy_role
execute if entity @s[tag=c10] run tag @e[tag=playerDummy,tag=c10] add get_dummy_role
execute if entity @s[tag=c11] run tag @e[tag=playerDummy,tag=c11] add get_dummy_role
execute if entity @s[tag=c12] run tag @e[tag=playerDummy,tag=c12] add get_dummy_role
execute if entity @s[tag=c13] run tag @e[tag=playerDummy,tag=c13] add get_dummy_role
execute if entity @s[tag=c14] run tag @e[tag=playerDummy,tag=c14] add get_dummy_role
execute if entity @s[tag=c15] run tag @e[tag=playerDummy,tag=c15] add get_dummy_role

execute if entity @s[tag=crewmate] run tag @e[tag=playerDummy,tag=get_dummy_role] add crewmate
execute if entity @s[tag=gnosia] run tag @e[tag=playerDummy,tag=get_dummy_role] add gnosia
execute if entity @s[tag=engineer] run tag @e[tag=playerDummy,tag=get_dummy_role] add engineer
execute if entity @s[tag=doctor] run tag @e[tag=playerDummy,tag=get_dummy_role] add doctor
execute if entity @s[tag=angel] run tag @e[tag=playerDummy,tag=get_dummy_role] add angel
execute if entity @s[tag=guard] run tag @e[tag=playerDummy,tag=get_dummy_role] add guard
execute if entity @s[tag=acfollower] run tag @e[tag=playerDummy,tag=get_dummy_role] add acfollower
execute if entity @s[tag=bug] run tag @e[tag=playerDummy,tag=get_dummy_role] add bug

tag @e[tag=get_dummy_role] remove get_dummy_role