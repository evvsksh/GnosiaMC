tag @s add log_revote_user

execute if score @s votedFor matches 1 run tag @a[tag=c1] add log_revote_target
execute if score @s votedFor matches 2 run tag @a[tag=c2] add log_revote_target
execute if score @s votedFor matches 3 run tag @a[tag=c3] add log_revote_target
execute if score @s votedFor matches 4 run tag @a[tag=c4] add log_revote_target
execute if score @s votedFor matches 5 run tag @a[tag=c5] add log_revote_target
execute if score @s votedFor matches 6 run tag @a[tag=c6] add log_revote_target
execute if score @s votedFor matches 7 run tag @a[tag=c7] add log_revote_target
execute if score @s votedFor matches 8 run tag @a[tag=c8] add log_revote_target
execute if score @s votedFor matches 9 run tag @a[tag=c9] add log_revote_target
execute if score @s votedFor matches 10 run tag @a[tag=c10] add log_revote_target
execute if score @s votedFor matches 11 run tag @a[tag=c11] add log_revote_target
execute if score @s votedFor matches 12 run tag @a[tag=c12] add log_revote_target
execute if score @s votedFor matches 13 run tag @a[tag=c13] add log_revote_target
execute if score @s votedFor matches 14 run tag @a[tag=c14] add log_revote_target
execute if score @s votedFor matches 15 run tag @a[tag=c15] add log_revote_target

setblock -299 88 -1610 oak_wall_sign[facing=east]{front_text:{messages:[[{text:"\n",extra:[{text:"",color:aqua,extra:[""]},{text:" voted for "},{text:"",color:gold,extra:[""]}]}],{selector:"@a[tag=log_revote_user]"},{selector:"@a[tag=log_revote_target]"},""]}}
data modify block -299 88 -1610 front_text.messages[0].extra[0].extra append from block -299 88 -1610 front_text.messages[1].extra
data modify block -299 88 -1610 front_text.messages[0].extra[2].extra append from block -299 88 -1610 front_text.messages[2].extra
data modify block -300 88 -1610 Items[{Slot:2b}].components."minecraft:written_book_content".pages[0].raw.hover_event.value.extra append from block -299 88 -1610 front_text.messages[0]

setblock -299 88 -1610 minecraft:air
tag @s remove log_revote_user
tag @a remove log_revote_target