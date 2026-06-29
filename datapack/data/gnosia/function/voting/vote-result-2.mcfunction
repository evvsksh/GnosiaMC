data merge entity @e[type=text_display,limit=1,tag=cryotext] {start_interpolation:-1,interpolation_duration:160,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-.2f,0f],scale:[6f,6f,1f]}}
data merge entity @e[type=text_display,limit=1,tag=cryotextName] {start_interpolation:-1,interpolation_duration:160,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-.5f,0f],scale:[2f,2f,1f]}}
scoreboard players reset @e vote
schedule function gnosia:door-vote-opening 5s

schedule function gnosia:phase/tp-to-cryosleep 10s
scoreboard players set revoteAmount voteCheck 0

function gnosia:ship-lights/ship-light-normal
team modify crew color white
team modify engineer_claim color white
team modify doctor_claim color white
team modify guard_duty color white