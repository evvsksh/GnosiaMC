scoreboard players add enableBug rolesCheck 1
execute if score enableBug rolesCheck matches 2.. run scoreboard players set enableBug rolesCheck 0
title @s actionbar ["",{"text":"Bug is set to: "},{"score":{"name":"enableBug","objective":"rolesCheck"}}]
function gnosia:open-settings
