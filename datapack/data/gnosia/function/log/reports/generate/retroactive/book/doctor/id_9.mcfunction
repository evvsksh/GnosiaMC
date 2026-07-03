setblock -299 88 -1610 oak_wall_sign[facing=east]{front_text:{messages:[{text:"",extra:["",{selector:"@a[tag=c1]"},{selector:"@a[tag=c2]"},{selector:"@a[tag=c3]"},{selector:"@a[tag=c4]"},{selector:"@a[tag=c5]"},{selector:"@a[tag=c6]"},{selector:"@a[tag=c7]"},{selector:"@a[tag=c8]"},{selector:"@a[tag=c9]"},{selector:"@a[tag=c10]"},{selector:"@a[tag=c11]"},{selector:"@a[tag=c12]"},{selector:"@a[tag=c13]"},{selector:"@a[tag=c14]"},{selector:"@a[tag=c15]"}]},"","",""]}}

data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages set value [{raw:{text:""}}]

execute store result score @s correctReportID run data get block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target.id
execute if score @s correctReportID matches 1 run tag @a[tag=c1] add correctID
execute if score @s correctReportID matches 2 run tag @a[tag=c2] add correctID
execute if score @s correctReportID matches 3 run tag @a[tag=c3] add correctID
execute if score @s correctReportID matches 4 run tag @a[tag=c4] add correctID
execute if score @s correctReportID matches 5 run tag @a[tag=c5] add correctID
execute if score @s correctReportID matches 6 run tag @a[tag=c6] add correctID
execute if score @s correctReportID matches 7 run tag @a[tag=c7] add correctID
execute if score @s correctReportID matches 8 run tag @a[tag=c8] add correctID
execute if score @s correctReportID matches 9 run tag @a[tag=c9] add correctID
execute if score @s correctReportID matches 10 run tag @a[tag=c10] add correctID
execute if score @s correctReportID matches 11 run tag @a[tag=c11] add correctID
execute if score @s correctReportID matches 12 run tag @a[tag=c12] add correctID
execute if score @s correctReportID matches 13 run tag @a[tag=c13] add correctID
execute if score @s correctReportID matches 14 run tag @a[tag=c14] add correctID
execute if score @s correctReportID matches 15 run tag @a[tag=c15] add correctID

execute if entity @s[tag=doctor] if entity @a[tag=correctID,tag=!gnosia] run scoreboard players set @s correctReportResult 1
execute if entity @s[tag=doctor] if entity @a[tag=correctID,tag=gnosia] run scoreboard players set @s correctReportResult 2

execute if score @s correctReportResult matches 1 run tellraw @s {color:"#8376b5",text:"You investigated ",extra:[{color:"#8376b5",selector:"@a[tag=correctID]"}," as ",{color:"#6eba2b",text:"Human"}]}
execute if score @s correctReportResult matches 2 run tellraw @s {color:"#8376b5",text:"You investigated ",extra:[{color:"#8376b5",selector:"@a[tag=correctID]"}," as ",{color:"#e60039",text:"Gnosia"}]}

tag @a[tag=correctID] remove correctID

execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:1i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages append value {raw:{text:"",extra:[{color:blue,text:"",extra:[":"]},{color:"#6eba2b",text:"\n\n[Human]",click_event:{action:run_command,command:"trigger doctorReportHuman set 1"}},{color:"#e60039",text:"\n\n[Gnosia]",click_event:{action:run_command,command:"trigger doctorReportGnosia set 1"}}]}}
execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:1i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages[-1].raw.extra[0].extra prepend from block -299 88 -1610 front_text.messages[0].extra[1].extra

execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:2i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages append value {raw:{text:"",extra:[{color:blue,text:"",extra:[":"]},{color:"#6eba2b",text:"\n\n[Human]",click_event:{action:run_command,command:"trigger doctorReportHuman set 2"}},{color:"#e60039",text:"\n\n[Gnosia]",click_event:{action:run_command,command:"trigger doctorReportGnosia set 2"}}]}}
execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:2i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages[-1].raw.extra[0].extra prepend from block -299 88 -1610 front_text.messages[0].extra[2].extra

execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:3i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages append value {raw:{text:"",extra:[{color:blue,text:"",extra:[":"]},{color:"#6eba2b",text:"\n\n[Human]",click_event:{action:run_command,command:"trigger doctorReportHuman set 3"}},{color:"#e60039",text:"\n\n[Gnosia]",click_event:{action:run_command,command:"trigger doctorReportGnosia set 3"}}]}}
execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:3i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages[-1].raw.extra[0].extra prepend from block -299 88 -1610 front_text.messages[0].extra[3].extra

execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:4i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages append value {raw:{text:"",extra:[{color:blue,text:"",extra:[":"]},{color:"#6eba2b",text:"\n\n[Human]",click_event:{action:run_command,command:"trigger doctorReportHuman set 4"}},{color:"#e60039",text:"\n\n[Gnosia]",click_event:{action:run_command,command:"trigger doctorReportGnosia set 4"}}]}}
execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:4i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages[-1].raw.extra[0].extra prepend from block -299 88 -1610 front_text.messages[0].extra[4].extra

execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:5i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages append value {raw:{text:"",extra:[{color:blue,text:"",extra:[":"]},{color:"#6eba2b",text:"\n\n[Human]",click_event:{action:run_command,command:"trigger doctorReportHuman set 5"}},{color:"#e60039",text:"\n\n[Gnosia]",click_event:{action:run_command,command:"trigger doctorReportGnosia set 5"}}]}}
execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:5i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages[-1].raw.extra[0].extra prepend from block -299 88 -1610 front_text.messages[0].extra[5].extra

execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:6i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages append value {raw:{text:"",extra:[{color:blue,text:"",extra:[":"]},{color:"#6eba2b",text:"\n\n[Human]",click_event:{action:run_command,command:"trigger doctorReportHuman set 6"}},{color:"#e60039",text:"\n\n[Gnosia]",click_event:{action:run_command,command:"trigger doctorReportGnosia set 6"}}]}}
execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:6i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages[-1].raw.extra[0].extra prepend from block -299 88 -1610 front_text.messages[0].extra[6].extra

execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:7i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages append value {raw:{text:"",extra:[{color:blue,text:"",extra:[":"]},{color:"#6eba2b",text:"\n\n[Human]",click_event:{action:run_command,command:"trigger doctorReportHuman set 7"}},{color:"#e60039",text:"\n\n[Gnosia]",click_event:{action:run_command,command:"trigger doctorReportGnosia set 7"}}]}}
execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:7i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages[-1].raw.extra[0].extra prepend from block -299 88 -1610 front_text.messages[0].extra[7].extra

execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:8i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages append value {raw:{text:"",extra:[{color:blue,text:"",extra:[":"]},{color:"#6eba2b",text:"\n\n[Human]",click_event:{action:run_command,command:"trigger doctorReportHuman set 8"}},{color:"#e60039",text:"\n\n[Gnosia]",click_event:{action:run_command,command:"trigger doctorReportGnosia set 8"}}]}}
execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:8i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages[-1].raw.extra[0].extra prepend from block -299 88 -1610 front_text.messages[0].extra[8].extra

execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:9i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages append value {raw:{text:"",extra:[{color:blue,text:"",extra:[":"]},{color:"#6eba2b",text:"\n\n[Human]",click_event:{action:run_command,command:"trigger doctorReportHuman set 9"}},{color:"#e60039",text:"\n\n[Gnosia]",click_event:{action:run_command,command:"trigger doctorReportGnosia set 9"}}]}}
execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:9i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages[-1].raw.extra[0].extra prepend from block -299 88 -1610 front_text.messages[0].extra[9].extra

execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:10i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages append value {raw:{text:"",extra:[{color:blue,text:"",extra:[":"]},{color:"#6eba2b",text:"\n\n[Human]",click_event:{action:run_command,command:"trigger doctorReportHuman set 10"}},{color:"#e60039",text:"\n\n[Gnosia]",click_event:{action:run_command,command:"trigger doctorReportGnosia set 10"}}]}}
execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:10i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages[-1].raw.extra[0].extra prepend from block -299 88 -1610 front_text.messages[0].extra[10].extra

execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:11i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages append value {raw:{text:"",extra:[{color:blue,text:"",extra:[":"]},{color:"#6eba2b",text:"\n\n[Human]",click_event:{action:run_command,command:"trigger doctorReportHuman set 11"}},{color:"#e60039",text:"\n\n[Gnosia]",click_event:{action:run_command,command:"trigger doctorReportGnosia set 11"}}]}}
execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:11i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages[-1].raw.extra[0].extra prepend from block -299 88 -1610 front_text.messages[0].extra[11].extra

execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:12i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages append value {raw:{text:"",extra:[{color:blue,text:"",extra:[":"]},{color:"#6eba2b",text:"\n\n[Human]",click_event:{action:run_command,command:"trigger doctorReportHuman set 12"}},{color:"#e60039",text:"\n\n[Gnosia]",click_event:{action:run_command,command:"trigger doctorReportGnosia set 12"}}]}}
execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:12i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages[-1].raw.extra[0].extra prepend from block -299 88 -1610 front_text.messages[0].extra[12].extra

execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:13i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages append value {raw:{text:"",extra:[{color:blue,text:"",extra:[":"]},{color:"#6eba2b",text:"\n\n[Human]",click_event:{action:run_command,command:"trigger doctorReportHuman set 13"}},{color:"#e60039",text:"\n\n[Gnosia]",click_event:{action:run_command,command:"trigger doctorReportGnosia set 13"}}]}}
execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:13i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages[-1].raw.extra[0].extra prepend from block -299 88 -1610 front_text.messages[0].extra[13].extra

execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:14i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages append value {raw:{text:"",extra:[{color:blue,text:"",extra:[":"]},{color:"#6eba2b",text:"\n\n[Human]",click_event:{action:run_command,command:"trigger doctorReportHuman set 14"}},{color:"#e60039",text:"\n\n[Gnosia]",click_event:{action:run_command,command:"trigger doctorReportGnosia set 14"}}]}}
execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:14i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages[-1].raw.extra[0].extra prepend from block -299 88 -1610 front_text.messages[0].extra[14].extra

execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:15i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages append value {raw:{text:"",extra:[{color:blue,text:"",extra:[":"]},{color:"#6eba2b",text:"\n\n[Human]",click_event:{action:run_command,command:"trigger doctorReportHuman set 15"}},{color:"#e60039",text:"\n\n[Gnosia]",click_event:{action:run_command,command:"trigger doctorReportGnosia set 15"}}]}}
execute if data block -300 88 -1610 Items[{Slot:26b}].components."minecraft:custom_data".doctorList[0].check_target{id:15i} run data modify block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages[-1].raw.extra[0].extra prepend from block -299 88 -1610 front_text.messages[0].extra[15].extra

data remove block -300 88 -1610 Items[{Slot:26b}].components."minecraft:written_book_content".pages[0]

setblock -299 88 -1610 minecraft:air

item replace entity @s hotbar.0 from block -300 88 -1610 container.26