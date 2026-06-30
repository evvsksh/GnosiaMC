tag @s add log_event_death
setblock -299 88 -1610 oak_wall_sign[facing=east]{front_text:{messages:[[{text:"\n",color:"#e60039",extra:[{text:" disappeared."}]}],{selector:"@a[tag=log_event_death]"},"",""]}}
data modify block -299 88 -1610 front_text.messages[0].extra prepend from block -299 88 -1610 front_text.messages[1].extra
data modify block -300 88 -1610 Items[{Slot:1b}].components."minecraft:written_book_content".pages[0].raw.extra[1].hover_event.value.extra append from block -299 88 -1610 front_text.messages[0]
setblock -299 88 -1610 minecraft:air
tag @s remove log_event_death