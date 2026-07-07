#function gnosia:phase/warp-drive-settp
tag @a[tag=crew,tag=!gnosia,tag=!dead] add warpdrive
execute as @a[tag=gnosia] run execute at @s run tp ~ ~-124 ~
stopsound @a record
title @a title ""
title @a actionbar ""
team modify crew nametagVisibility never
team modify engineer_claim nametagVisibility never
team modify doctor_claim nametagVisibility never
team modify guard_duty nametagVisibility never
bossbar set voting visible false
bossbar set warpdrive visible false
bossbar set discussion visible false
tp @a[gamemode=spectator,tag=dead] @a[sort=random,gamemode=adventure,tag=gnosia,limit=1]
tp @a[gamemode=spectator,tag=!crew] @a[sort=random,gamemode=adventure,tag=gnosia,limit=1]
schedule function gnosia:phase/gnosia-kill 5s

execute if score gnosiaLeft rolesLeft matches 1.. if score gnosiaKillChoose gnosiaKillChoose matches 0 as @e[sort=random,limit=1,tag=playerDummy,tag=!gnosia,tag=!dead] run scoreboard players operation gnosiaKillChoose gnosiaKillChoose = @s playerDummyID

execute if entity @e[tag=playerDummy,tag=engineer,tag=!dead] if score engSearch gnosiaKillChoose matches 0 as @e[tag=playerDummy,tag=engineer,tag=!dead] run function gnosia:log/reports/establish_exclusions
execute if entity @e[tag=playerDummy,tag=engineer,tag=!dead] if score engSearch gnosiaKillChoose matches 0 as @e[sort=random,limit=1,tag=playerDummy,tag=!exclude,tag=!engineer,tag=!dead] run scoreboard players operation engSearch gnosiaKillChoose = @s playerDummyID
tag @e[tag=exclude] remove exclude

execute if entity @e[tag=playerDummy,tag=angel,tag=!dead] if score angelSave gnosiaKillChoose matches 0 as @e[sort=random,limit=1,tag=playerDummy,tag=!angel,tag=!dead] run scoreboard players operation angelSave gnosiaKillChoose = @s playerDummyID