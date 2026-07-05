item replace block -300 88 -1610 container.0 with minecraft:written_book[minecraft:custom_data={masterLogs:1b},minecraft:written_book_content={title:"Logs",author:"",pages:[{raw:{text:"Settings:",bold:true,color:blue,extra:[""]}}]}]
setblock -299 88 -1610 oak_wall_sign[facing=east]{front_text:{messages:[[{text:"\n\n",bold:false,color:"#6eba2b",extra:[{score:{name:"playersAmountStart",objective:"rolesCheck"}},{text:" Crew"}]},{text:"\n",bold:false,color:"#e60039",extra:[{score:{name:"maxGnosia",objective:"rolesCheck"}},{text:" Gnosia"}]}],"","",""]}}
data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[0].raw.extra append from block -299 88 -1610 front_text.messages[0]
setblock -299 88 -1610 minecraft:air
execute if score enableEngineer rolesCheck matches 1 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[0].raw.extra append value {text:"\nEngineer",bold:false,color:"#187fc4"}
execute if score enableDoctor rolesCheck matches 1 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[0].raw.extra append value {text:"\nDoctor",bold:false,color:"#8376b5"}
execute if score enableAngel rolesCheck matches 1 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[0].raw.extra append value {text:"\nGuardian Angel",bold:false,color:"#f6ad3c"}
execute if score enableGuard rolesCheck matches 1 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[0].raw.extra append value {text:"\nGuard Duty",bold:false,color:"#46b035"}
execute if score enableAC rolesCheck matches 1 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[0].raw.extra append value {text:"\nAC Follower",bold:false,color:"#c60080"}
execute if score enableBug rolesCheck matches 1 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[0].raw.extra append value {text:"\nBug",bold:false,color:"#253636"}

function gnosia:log/status/generate_status

scoreboard players set reportPage logState 0
scoreboard players set engineerHover logState 0
scoreboard players set doctorHover logState 0