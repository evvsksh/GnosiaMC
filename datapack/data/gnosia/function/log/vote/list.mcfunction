tag @s add log_vote_user

execute if score @s votedFor matches 1 run tag @a[tag=c1] add log_vote_target
execute if score @s votedFor matches 2 run tag @a[tag=c2] add log_vote_target
execute if score @s votedFor matches 3 run tag @a[tag=c3] add log_vote_target
execute if score @s votedFor matches 4 run tag @a[tag=c4] add log_vote_target
execute if score @s votedFor matches 5 run tag @a[tag=c5] add log_vote_target
execute if score @s votedFor matches 6 run tag @a[tag=c6] add log_vote_target
execute if score @s votedFor matches 7 run tag @a[tag=c7] add log_vote_target
execute if score @s votedFor matches 8 run tag @a[tag=c8] add log_vote_target
execute if score @s votedFor matches 9 run tag @a[tag=c9] add log_vote_target
execute if score @s votedFor matches 10 run tag @a[tag=c10] add log_vote_target
execute if score @s votedFor matches 11 run tag @a[tag=c11] add log_vote_target
execute if score @s votedFor matches 12 run tag @a[tag=c12] add log_vote_target
execute if score @s votedFor matches 13 run tag @a[tag=c13] add log_vote_target
execute if score @s votedFor matches 14 run tag @a[tag=c14] add log_vote_target
execute if score @s votedFor matches 15 run tag @a[tag=c15] add log_vote_target

execute if entity @s[tag=c1] run scoreboard players operation tempVoteCount logState > @e[type=minecraft:armor_stand,tag=disconnect,tag=c1] voteSub
execute if entity @s[tag=c2] run scoreboard players operation tempVoteCount logState > @e[type=minecraft:armor_stand,tag=disconnect,tag=c2] voteSub
execute if entity @s[tag=c3] run scoreboard players operation tempVoteCount logState > @e[type=minecraft:armor_stand,tag=disconnect,tag=c3] voteSub
execute if entity @s[tag=c4] run scoreboard players operation tempVoteCount logState > @e[type=minecraft:armor_stand,tag=disconnect,tag=c4] voteSub
execute if entity @s[tag=c5] run scoreboard players operation tempVoteCount logState > @e[type=minecraft:armor_stand,tag=disconnect,tag=c5] voteSub
execute if entity @s[tag=c6] run scoreboard players operation tempVoteCount logState > @e[type=minecraft:armor_stand,tag=disconnect,tag=c6] voteSub
execute if entity @s[tag=c7] run scoreboard players operation tempVoteCount logState > @e[type=minecraft:armor_stand,tag=disconnect,tag=c7] voteSub
execute if entity @s[tag=c8] run scoreboard players operation tempVoteCount logState > @e[type=minecraft:armor_stand,tag=disconnect,tag=c8] voteSub
execute if entity @s[tag=c9] run scoreboard players operation tempVoteCount logState > @e[type=minecraft:armor_stand,tag=disconnect,tag=c9] voteSub
execute if entity @s[tag=c10] run scoreboard players operation tempVoteCount logState > @e[type=minecraft:armor_stand,tag=disconnect,tag=c10] voteSub
execute if entity @s[tag=c11] run scoreboard players operation tempVoteCount logState > @e[type=minecraft:armor_stand,tag=disconnect,tag=c11] voteSub
execute if entity @s[tag=c12] run scoreboard players operation tempVoteCount logState > @e[type=minecraft:armor_stand,tag=disconnect,tag=c12] voteSub
execute if entity @s[tag=c13] run scoreboard players operation tempVoteCount logState > @e[type=minecraft:armor_stand,tag=disconnect,tag=c13] voteSub
execute if entity @s[tag=c14] run scoreboard players operation tempVoteCount logState > @e[type=minecraft:armor_stand,tag=disconnect,tag=c14] voteSub
execute if entity @s[tag=c15] run scoreboard players operation tempVoteCount logState > @e[type=minecraft:armor_stand,tag=disconnect,tag=c15] voteSub

setblock -299 88 -1610 oak_wall_sign[facing=east]{front_text:{messages:[{text:"\n",extra:[{color:green,text:"",extra:["[","X","] "]},{text:"",color:aqua,extra:[""]},{text:" voted for "},{text:"",color:gold,extra:[""]}]},{selector:"@a[tag=log_vote_user]"},{selector:"@a[tag=log_vote_target]"},{score:{name:"tempVoteCount",objective:"logState"}}]}}
data modify block -299 88 -1610 front_text.messages[0].extra[0].extra[1] set from block -299 88 -1610 front_text.messages[3]
data modify block -299 88 -1610 front_text.messages[0].extra[1].extra append from block -299 88 -1610 front_text.messages[1].extra
data modify block -299 88 -1610 front_text.messages[0].extra[3].extra append from block -299 88 -1610 front_text.messages[2].extra
data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[-1].raw.extra[-1].hover_event.value.extra append from block -299 88 -1610 front_text.messages[0]

setblock -299 88 -1610 minecraft:air
scoreboard players set tempVoteCount logState 0
tag @s remove log_vote_user
tag @a remove log_vote_target