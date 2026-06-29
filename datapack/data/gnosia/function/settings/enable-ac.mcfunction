scoreboard players add enableAC rolesCheck 1
execute if score enableAC rolesCheck matches 2.. run scoreboard players set enableAC rolesCheck 0
title @s actionbar ["",{"text":"AC Follower is set to: "},{"score":{"name":"enableAC","objective":"rolesCheck"}}]



