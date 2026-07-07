function gnosia:remove-all-roles

function gnosia:phase/start/assign-gnosia-role

execute if score enableEngineer rolesCheck matches 1 run tag @r[tag=crew,tag=!gnosia] add engineer
execute if score enableDoctor rolesCheck matches 1 run tag @r[tag=crew,tag=!gnosia,tag=!engineer] add doctor
execute if score enableAngel rolesCheck matches 1 run tag @r[tag=crew,tag=!gnosia,tag=!engineer,tag=!doctor] add angel
execute if score enableGuard rolesCheck matches 1 run tag @r[tag=crew,tag=!gnosia,tag=!engineer,tag=!doctor,tag=!angel] add guard
execute if score enableGuard rolesCheck matches 1 run tag @r[tag=crew,tag=!gnosia,tag=!engineer,tag=!doctor,tag=!angel,tag=!guard] add guard
execute if score enableAC rolesCheck matches 1 run tag @r[tag=crew,tag=!gnosia,tag=!engineer,tag=!doctor,tag=!angel,tag=!guard] add acfollower
execute if score enableBug rolesCheck matches 1 run tag @r[tag=crew,tag=!gnosia,tag=!engineer,tag=!doctor,tag=!angel,tag=!guard,tag=!acfollower] add bug

function gnosia:phase/start/assign-crewmate-role