scoreboard players add enableDoctor rolesCheck 1
execute if score enableDoctor rolesCheck matches 2.. run scoreboard players set enableDoctor rolesCheck 0
title @s actionbar ["",{"text":"Doctor is set to: "},{"score":{"name":"enableDoctor","objective":"rolesCheck"}}]



