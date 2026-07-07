tag @s add log_event_role_reveal

setblock -299 88 -1610 oak_wall_sign[facing=east]{front_text:{messages:[{text:"\n",extra:[{color:white,text:"",extra:[""]},{text:"",color:white,extra:[""]}]},{selector:"@e[tag=log_event_role_reveal]"},"",""]}}

execute if entity @s[tag=crewmate] run data modify block -299 88 -1610 front_text.messages[0].extra[0] set value {color:"#6eba2b",text:"[Crew] "}
execute if entity @s[tag=engineer] run data modify block -299 88 -1610 front_text.messages[0].extra[0] set value {color:"#187fc4",text:"[Engineer] "}
execute if entity @s[tag=doctor] run data modify block -299 88 -1610 front_text.messages[0].extra[0] set value {color:"#8376b5",text:"[Doctor] "}
execute if entity @s[tag=angel] run data modify block -299 88 -1610 front_text.messages[0].extra[0] set value {color:"#f6ad3c",text:"[Guardian Angel] "}
execute if entity @s[tag=guard] run data modify block -299 88 -1610 front_text.messages[0].extra[0] set value {color:"#46b035",text:"[Guard Duty] "}
execute if entity @s[tag=acfollower] run data modify block -299 88 -1610 front_text.messages[0].extra[0] set value {color:"#c60080",text:"[AC Follower] "}
execute if entity @s[tag=gnosia] run data modify block -299 88 -1610 front_text.messages[0].extra[0] set value {color:"#e60039",text:"[Gnosia] "}
execute if entity @s[tag=bug] run data modify block -299 88 -1610 front_text.messages[0].extra[0] set value {color:"#253636",shadow_color:[1,1,1,0.5],text:"[Bug] "}

data modify block -299 88 -1610 front_text.messages[0].extra[1].extra append from block -299 88 -1610 front_text.messages[1].extra

execute if entity @s[tag=gnosiaElimination] run data modify block -299 88 -1610 front_text.messages[0].extra[1].color set value dark_red
execute if entity @s[tag=cryoSleep] run data modify block -299 88 -1610 front_text.messages[0].extra[1].color set value dark_aqua

data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[0].raw.extra[-1].hover_event.value.extra append from block -299 88 -1610 front_text.messages[0]

setblock -299 88 -1610 minecraft:air
tag @s remove log_event_role_reveal