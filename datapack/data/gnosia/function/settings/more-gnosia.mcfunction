scoreboard players add maxGnosia rolesCheck 1
execute if score maxGnosia rolesCheck matches 7.. run scoreboard players set maxGnosia rolesCheck 1
title @s actionbar ["",{"text":"Gnosia Amount is set to: "},{"score":{"name":"maxGnosia","objective":"rolesCheck"}}]
function gnosia:open-settings
