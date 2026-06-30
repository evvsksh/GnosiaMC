#function gnosia:phase/warp-drive-settp
tag @a[tag=!gnosia,tag=!dead] add warpdrive
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
schedule function gnosia:phase/gnosia-kill 5s