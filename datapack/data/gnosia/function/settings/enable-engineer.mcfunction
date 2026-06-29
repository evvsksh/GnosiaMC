scoreboard players add enableEngineer rolesCheck 1
execute if score enableEngineer rolesCheck matches 2.. run scoreboard players set enableEngineer rolesCheck 0
title @s actionbar ["",{"text":"Engineer is set to: "},{"score":{"name":"enableEngineer","objective":"rolesCheck"}}]



