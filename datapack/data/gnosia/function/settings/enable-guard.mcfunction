scoreboard players add enableGuard rolesCheck 1
execute if score enableGuard rolesCheck matches 2.. run scoreboard players set enableGuard rolesCheck 0
title @s actionbar ["",{"text":"Guard Duty is set to: "},{"score":{"name":"enableGuard","objective":"rolesCheck"}}]