execute at @e[tag=cryosleepPos,limit=1] run summon text_display ~ ~ ~ {billboard:"center",line_width:1000,text_opacity:255,default_background:0b,alignment:"center",Tags:["cryotext"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,1f]},text:{"bold":true,"color":"aqua","shadow_color":-16733526,"text":"COLD SLEEP"},background:-939517399}
scoreboard players set cryotextTimer cryotextTimer 0
execute at @e[tag=cryosleepPos,limit=1] run summon text_display ~ ~-1 ~ {billboard:"center",line_width:1000,text_opacity:255,default_background:0b,alignment:"center",Tags:["cryotextName"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},text:{"color":"aqua","selector":"@e[tag=playerDummy,tag=cryoVote]","shadow_color":-16733526},background:-939517399}
playsound gnosia:voted player @a ~ ~ ~ 1 1 1
clear @a minecraft:written_book[minecraft:custom_data={voteBook:1b}]
function gnosia:light-vote-blue
particle minecraft:snowflake -269 86 -1610 0 0 0 .5 300 force
function gnosia:voting/voteselect/display-votes

function gnosia:log/distribute_master

function gnosia:voicechat/enable

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
