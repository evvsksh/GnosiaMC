tag @s add log_event_frozen
setblock -299 88 -1610 oak_wall_sign[facing=east]{front_text:{messages:[[{text:"\n",color:blue,extra:[{text:" was sent to Cold Sleep."}]}],{selector:"@a[tag=log_event_frozen]"},"",""]}}
data modify block -299 88 -1610 front_text.messages[0].extra prepend from block -299 88 -1610 front_text.messages[1].extra
data modify block -300 88 -1610 Items[{Slot:1b}].components."minecraft:written_book_content".pages[0].raw.extra[1].hover_event.value.extra append from block -299 88 -1610 front_text.messages[0]
setblock -299 88 -1610 minecraft:air
tag @s remove log_event_frozen