tag @s add log_event_report_gnosia
execute if score @s engineerID matches 1.. run setblock -299 88 -1610 oak_wall_sign[facing=east]{front_text:{messages:[{text:"\n",color:"#187fc4",extra:[" reported "," as ",{color:"#e60039",text:"Gnosia"},"."]},{selector:"@e[tag=log_event_report_gnosia]"},{selector:"@e[tag=log_report]"},""]}}
execute if score @s doctorID matches 1.. run setblock -299 88 -1610 oak_wall_sign[facing=east]{front_text:{messages:[{text:"\n",color:"#8376b5",extra:[" reported "," as ",{color:"#e60039",text:"Gnosia"},"."]},{selector:"@e[tag=log_event_report_gnosia]"},{selector:"@e[tag=log_report]"},""]}}
data modify block -299 88 -1610 front_text.messages[0].extra prepend from block -299 88 -1610 front_text.messages[1].extra
data modify block -299 88 -1610 front_text.messages[0].extra insert -4 from block -299 88 -1610 front_text.messages[2].extra
data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[-1].raw.extra[1].hover_event.value.extra append from block -299 88 -1610 front_text.messages[0]
setblock -299 88 -1610 minecraft:air
tag @s remove log_event_report_gnosia