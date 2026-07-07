execute at @e[tag=cryosleepPos] run summon text_display ~ ~ ~ {billboard:"center",line_width:1000,text_opacity:255,default_background:0b,alignment:"center",Tags:["cryotext"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,1f]},text:{"bold":true,"color":"gold","shadow_color":-5608448,"text":"Revote!"},background:-936830464}
scoreboard players set cryotextTimer cryotextTimer 0
execute at @e[tag=cryosleepPos] run summon text_display ~ ~-1 ~ {billboard:"center",line_width:1000,text_opacity:255,default_background:0b,alignment:"center",Tags:["cryotextName"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},text:{"color":"gold","selector":"@e[tag=playerDummy,tag=cryoVote]","shadow_color":-5608448},background:-936830464}
playsound gnosia:voted player @a ~ ~ ~ 1 1 1
clear @s written_book
function gnosia:light-vote-red
function gnosia:voting/voteselect/display-votes
function gnosia:log/event/tied_vote

function gnosia:log/distribute_master

data merge entity @e[type=text_display,limit=1,tag=cryotext] {start_interpolation:-1,interpolation_duration:160,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-.2f,0f],scale:[6f,6f,1f]}}
data merge entity @e[type=text_display,limit=1,tag=cryotextName] {start_interpolation:-1,interpolation_duration:160,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-.5f,0f],scale:[2f,2f,1f]}}
scoreboard players reset @e vote
scoreboard players add revoteAmount voteCheck 1

execute unless score #cryoVoteCountCompare temp = #cryoVoteCount temp run scoreboard players set revoteAmount voteCheck 1
execute store result score #cryoVoteCountCompare temp if entity @e[tag=cryoVote,type=armor_stand]

execute if score revoteAmount voteCheck matches ..1 run schedule function gnosia:voting/final-vote 3s
execute if score revoteAmount voteCheck matches 2.. run schedule function gnosia:voting/start-revote-cryo 3s