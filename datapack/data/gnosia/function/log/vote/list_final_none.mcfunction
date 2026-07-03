tag @s add log_vote_final_user

setblock -299 88 -1610 oak_wall_sign[facing=east]{front_text:{messages:[[{text:"\n",extra:[{text:"",color:aqua,extra:[""]},{text:" voted to "},{text:"Freeze Nobody",color:dark_red}]}],{selector:"@a[tag=log_vote_final_user]"},"",""]}}
data modify block -299 88 -1610 front_text.messages[0].extra[0].extra append from block -299 88 -1610 front_text.messages[1].extra
data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[-1].raw.extra[-1].hover_event.value.extra append from block -299 88 -1610 front_text.messages[0]

setblock -299 88 -1610 minecraft:air
tag @s remove log_vote_final_user