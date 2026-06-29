execute if score enableAngel rolesCheck matches 1 run tag @a[limit=1,sort=random,tag=!gnosia,tag=!crewmate,tag=!angel,tag=!doctor,tag=!engineer,tag=!bug,tag=!acfollower,tag=!guard] add angel
execute if score enableDoctor rolesCheck matches 1 run tag @a[limit=1,sort=random,tag=!gnosia,tag=!crewmate,tag=!angel,tag=!doctor,tag=!engineer,tag=!bug,tag=!acfollower,tag=!guard] add doctor
execute if score enableEngineer rolesCheck matches 1 run tag @a[limit=1,sort=random,tag=!gnosia,tag=!crewmate,tag=!angel,tag=!doctor,tag=!engineer,tag=!bug,tag=!acfollower,tag=!guard] add engineer
execute if score enableBug rolesCheck matches 1 run tag @a[limit=1,sort=random,tag=!gnosia,tag=!crewmate,tag=!angel,tag=!doctor,tag=!engineer,tag=!bug,tag=!acfollower,tag=!guard] add bug
execute if score enableAC rolesCheck matches 1 run tag @a[limit=1,sort=random,tag=!gnosia,tag=!crewmate,tag=!angel,tag=!doctor,tag=!engineer,tag=!bug,tag=!acfollower,tag=!guard] add acfollower
execute if score enableGuard rolesCheck matches 1 run tag @a[limit=1,sort=random,tag=!gnosia,tag=!crewmate,tag=!angel,tag=!doctor,tag=!engineer,tag=!bug,tag=!acfollower,tag=!guard] add guard
execute if score enableGuard rolesCheck matches 1 run tag @a[limit=1,sort=random,tag=!gnosia,tag=!crewmate,tag=!angel,tag=!doctor,tag=!engineer,tag=!bug,tag=!acfollower,tag=!guard] add guard

schedule function gnosia:assign-gnosia-role 2t
schedule function gnosia:assign-crewmate-role 4t
schedule function gnosia:announce-roles-title 6t