execute at @e[tag=cryosleepPos,limit=1] run summon text_display ~ ~ ~ {billboard:"center",line_width:1000,text_opacity:255,default_background:0b,alignment:"center",Tags:["cryotext"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,1f]},text:{"bold":true,"color":"aqua","shadow_color":-16733526,"text":"COLD SLEEP"},background:-939517399}
scoreboard players set cryotextTimer cryotextTimer 0
execute at @e[tag=cryosleepPos,limit=1] run summon text_display ~ ~-1 ~ {billboard:"center",line_width:1000,text_opacity:255,default_background:0b,alignment:"center",Tags:["cryotextName"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1f]},text:{"color":"aqua","selector":"@a[tag=cryoVote]","shadow_color":-16733526},background:-939517399}
playsound gnosia:voted player @a ~ ~ ~ 1 1 1
clear @a minecraft:written_book[minecraft:custom_data={voteBook:1b}]
schedule function gnosia:voting/vote-result-2 2t
function gnosia:light-vote-blue
particle minecraft:snowflake -269 86 -1610 0 0 0 .5 300 force
function gnosia:voting/voteselect/display-votes

function gnosia:log/distribute_master

scoreboard players set speakEnabled gameStatus 1