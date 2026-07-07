tag @s add log_event_claim_engineer
setblock -299 88 -1610 oak_wall_sign[facing=east]{front_text:{messages:[[{text:"\n",color:"#187fc4",extra:[{text:" stepped forward as the Engineer."}]}],{selector:"@e[tag=log_event_claim_engineer]"},"",""]}}
data modify block -299 88 -1610 front_text.messages[0].extra prepend from block -299 88 -1610 front_text.messages[1].extra
data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[-1].raw.extra[1].hover_event.value.extra append from block -299 88 -1610 front_text.messages[0]
setblock -299 88 -1610 minecraft:air
tag @s remove log_event_claim_engineer

function gnosia:log/distribute_master