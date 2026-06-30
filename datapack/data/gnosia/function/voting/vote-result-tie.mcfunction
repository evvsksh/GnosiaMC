execute at @e[tag=cryosleepPos] run summon text_display ~ ~ ~ {billboard:"center",line_width:1000,text_opacity:255,default_background:0b,alignment:"center",Tags:["cryotext"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,1f]},text:{"bold":true,"color":"gold","shadow_color":-5608448,"text":"Revote!"},background:-936830464}
scoreboard players set cryotextTimer cryotextTimer 0
execute at @e[tag=cryosleepPos] run summon text_display ~ ~-1 ~ {billboard:"center",line_width:1000,text_opacity:255,default_background:0b,alignment:"center",Tags:["cryotextName"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},text:{"color":"gold","selector":"@a[tag=cryoVote]","shadow_color":-5608448},background:-936830464}
playsound gnosia:voted player @a ~ ~ ~ 1 1 1
clear @s written_book
schedule function gnosia:voting/vote-result-tie2 2t
function gnosia:light-vote-red
function gnosia:voting/voteselect/display-votes
function gnosia:log/event/tied_vote
execute if score revoteAmount voteCheck matches 0 run function gnosia:log/vote/generate_vote
execute if score revoteAmount voteCheck matches 1.. run function gnosia:log/vote/generate_revote

