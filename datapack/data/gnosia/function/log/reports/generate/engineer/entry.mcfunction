tag @s add log_report_engineer

scoreboard players operation @s logReportIndexEngineer > * logReportIndexEngineer
scoreboard players add @s logReportIndexEngineer 1

setblock -299 88 -1610 oak_wall_sign[facing=east]{front_text:{messages:[{color:white,text:"\n",extra:["",{color:white,text:""},{color:white,text:""},{color:white,text:""},{color:white,text:""},{color:white,text:""},{color:white,text:""},{color:white,text:""},{color:white,text:""},{color:white,text:""}]},{selector:"@a[tag=log_report_engineer]"},"",""]}}
data modify block -299 88 -1610 front_text.messages[0].extra append from block -299 88 -1610 front_text.messages[1].extra
data modify block -299 88 -1610 front_text.messages[0].extra[-1].color set value white
data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[0].hover_event.value.extra[1].extra append from block -299 88 -1610 front_text.messages[0]
setblock -299 88 -1610 minecraft:air

execute if entity @s[tag=dead,tag=gnosiaElimination] run function gnosia:log/reports/color_killed
execute if entity @s[tag=dead,tag=cryoSleep] run function gnosia:log/reports/color_frozen

tag @s remove log_report_engineer