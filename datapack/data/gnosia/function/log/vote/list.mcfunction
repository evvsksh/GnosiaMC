tag @s add log_vote_user

execute if score @s votedFor matches 1 run tag @e[tag=playerDummy,tag=c1] add log_vote_target
execute if score @s votedFor matches 2 run tag @e[tag=playerDummy,tag=c2] add log_vote_target
execute if score @s votedFor matches 3 run tag @e[tag=playerDummy,tag=c3] add log_vote_target
execute if score @s votedFor matches 4 run tag @e[tag=playerDummy,tag=c4] add log_vote_target
execute if score @s votedFor matches 5 run tag @e[tag=playerDummy,tag=c5] add log_vote_target
execute if score @s votedFor matches 6 run tag @e[tag=playerDummy,tag=c6] add log_vote_target
execute if score @s votedFor matches 7 run tag @e[tag=playerDummy,tag=c7] add log_vote_target
execute if score @s votedFor matches 8 run tag @e[tag=playerDummy,tag=c8] add log_vote_target
execute if score @s votedFor matches 9 run tag @e[tag=playerDummy,tag=c9] add log_vote_target
execute if score @s votedFor matches 10 run tag @e[tag=playerDummy,tag=c10] add log_vote_target
execute if score @s votedFor matches 11 run tag @e[tag=playerDummy,tag=c11] add log_vote_target
execute if score @s votedFor matches 12 run tag @e[tag=playerDummy,tag=c12] add log_vote_target
execute if score @s votedFor matches 13 run tag @e[tag=playerDummy,tag=c13] add log_vote_target
execute if score @s votedFor matches 14 run tag @e[tag=playerDummy,tag=c14] add log_vote_target
execute if score @s votedFor matches 15 run tag @e[tag=playerDummy,tag=c15] add log_vote_target

scoreboard players operation tempVoteCount logState > @s voteSub

setblock -299 88 -1610 oak_wall_sign[facing=east]{front_text:{messages:[{text:"\n",extra:[{color:green,text:"",extra:["[","X","] "]},{text:"",color:aqua,extra:[""]},{text:" voted for "},{text:"",color:gold,extra:[""]}]},{selector:"@e[tag=log_vote_user]"},{selector:"@e[tag=log_vote_target]"},{score:{name:"tempVoteCount",objective:"logState"}}]}}
data modify block -299 88 -1610 front_text.messages[0].extra[0].extra[1] set from block -299 88 -1610 front_text.messages[3]
data modify block -299 88 -1610 front_text.messages[0].extra[1].extra append from block -299 88 -1610 front_text.messages[1].extra
data modify block -299 88 -1610 front_text.messages[0].extra[3].extra append from block -299 88 -1610 front_text.messages[2].extra
data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[-1].raw.extra[-1].hover_event.value.extra append from block -299 88 -1610 front_text.messages[0]

setblock -299 88 -1610 minecraft:air
scoreboard players set tempVoteCount logState 0
tag @s remove log_vote_user
tag @e[tag=log_vote_target] remove log_vote_target