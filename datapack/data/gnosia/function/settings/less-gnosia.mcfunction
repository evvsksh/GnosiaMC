scoreboard players remove maxGnosia rolesCheck 1
execute if score maxGnosia rolesCheck matches ..0 run scoreboard players set maxGnosia rolesCheck 6
title @s actionbar ["",{"text":"Gnosia Amount is set to: "},{"score":{"name":"maxGnosia","objective":"rolesCheck"}}]
function gnosia:open-settings
