tag @s add log_report_engineer_claimant
scoreboard players operation tempEngineerID logState = @s engineerID

setblock -299 88 -1610 oak_wall_sign[facing=east]{front_text:{messages:[[{text:"\n",extra:[{text:"["},{score:{name:"tempEngineerID",objective:"logState"}},{text:"] "}]}],{selector:"@e[tag=log_report_engineer_claimant]"},"",""]}}
data modify block -299 88 -1610 front_text.messages[0].extra append from block -299 88 -1610 front_text.messages[1].extra
data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[0].hover_event.value.extra[0].extra append from block -299 88 -1610 front_text.messages[0]
setblock -299 88 -1610 minecraft:air
tag @s remove log_report_engineer_claimant
scoreboard players reset tempEngineerID logState