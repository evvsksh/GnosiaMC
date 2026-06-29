data merge entity @e[type=text_display,limit=1,tag=cryotext] {start_interpolation:-1,interpolation_duration:160,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-.2f,0f],scale:[6f,6f,1f]}}
data merge entity @e[type=text_display,limit=1,tag=cryotextName] {start_interpolation:-1,interpolation_duration:160,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-.5f,0f],scale:[2f,2f,1f]}}
scoreboard players reset @e vote
scoreboard players add revoteAmount voteCheck 1

execute if score revoteAmount voteCheck matches 1 if score #cryoVoteCount temp matches 3.. run scoreboard players set revoteAmount voteCheck 1

execute if score revoteAmount voteCheck matches ..1 run schedule function gnosia:voting/final-vote 3s
execute if score revoteAmount voteCheck matches 2.. run schedule function gnosia:voting/start-revote-cryo 3s