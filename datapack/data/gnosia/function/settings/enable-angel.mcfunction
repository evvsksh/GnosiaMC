scoreboard players add enableAngel rolesCheck 1
execute if score enableAngel rolesCheck matches 2.. run scoreboard players set enableAngel rolesCheck 0
title @s actionbar ["",{"text":"Angel is set to: "},{"score":{"name":"enableAngel","objective":"rolesCheck"}}]
function gnosia:open-settings
