execute if score @s reportTarget matches 1 run tag @e[tag=playerDummy,tag=c1] add log_report
execute if score @s reportTarget matches 2 run tag @e[tag=playerDummy,tag=c2] add log_report
execute if score @s reportTarget matches 3 run tag @e[tag=playerDummy,tag=c3] add log_report
execute if score @s reportTarget matches 4 run tag @e[tag=playerDummy,tag=c4] add log_report
execute if score @s reportTarget matches 5 run tag @e[tag=playerDummy,tag=c5] add log_report
execute if score @s reportTarget matches 6 run tag @e[tag=playerDummy,tag=c6] add log_report
execute if score @s reportTarget matches 7 run tag @e[tag=playerDummy,tag=c7] add log_report
execute if score @s reportTarget matches 8 run tag @e[tag=playerDummy,tag=c8] add log_report
execute if score @s reportTarget matches 9 run tag @e[tag=playerDummy,tag=c9] add log_report
execute if score @s reportTarget matches 10 run tag @e[tag=playerDummy,tag=c10] add log_report
execute if score @s reportTarget matches 11 run tag @e[tag=playerDummy,tag=c11] add log_report
execute if score @s reportTarget matches 12 run tag @e[tag=playerDummy,tag=c12] add log_report
execute if score @s reportTarget matches 13 run tag @e[tag=playerDummy,tag=c13] add log_report
execute if score @s reportTarget matches 14 run tag @e[tag=playerDummy,tag=c14] add log_report
execute if score @s reportTarget matches 15 run tag @e[tag=playerDummy,tag=c15] add log_report

execute as @e[tag=log_report] run function gnosia:log/reports/group/prepare_doctor_entry

execute if score @e[limit=1,tag=log_report] logReportIndexDoctor matches 1 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[1].color set value red
execute if score @e[limit=1,tag=log_report] logReportIndexDoctor matches 2 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[2].color set value red
execute if score @e[limit=1,tag=log_report] logReportIndexDoctor matches 3 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[3].color set value red
execute if score @e[limit=1,tag=log_report] logReportIndexDoctor matches 4 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[4].color set value red
execute if score @e[limit=1,tag=log_report] logReportIndexDoctor matches 5 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[5].color set value red
execute if score @e[limit=1,tag=log_report] logReportIndexDoctor matches 6 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[6].color set value red
execute if score @e[limit=1,tag=log_report] logReportIndexDoctor matches 7 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[7].color set value red
execute if score @e[limit=1,tag=log_report] logReportIndexDoctor matches 8 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[8].color set value red
execute if score @e[limit=1,tag=log_report] logReportIndexDoctor matches 9 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[9].color set value red
execute if score @e[limit=1,tag=log_report] logReportIndexDoctor matches 10 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[10].color set value red
execute if score @e[limit=1,tag=log_report] logReportIndexDoctor matches 11 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[11].color set value red
execute if score @e[limit=1,tag=log_report] logReportIndexDoctor matches 12 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[12].color set value red
execute if score @e[limit=1,tag=log_report] logReportIndexDoctor matches 13 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[13].color set value red
execute if score @e[limit=1,tag=log_report] logReportIndexDoctor matches 14 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[14].color set value red
execute if score @e[limit=1,tag=log_report] logReportIndexDoctor matches 15 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[15].color set value red

execute if score @s doctorID matches 1 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[{color:red}].extra[1].color set value "#e60039"
execute if score @s doctorID matches 2 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[{color:red}].extra[2].color set value "#e60039"
execute if score @s doctorID matches 3 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[{color:red}].extra[3].color set value "#e60039"
execute if score @s doctorID matches 4 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[{color:red}].extra[4].color set value "#e60039"
execute if score @s doctorID matches 5 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[{color:red}].extra[5].color set value "#e60039"
execute if score @s doctorID matches 6 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[{color:red}].extra[6].color set value "#e60039"
execute if score @s doctorID matches 7 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[{color:red}].extra[7].color set value "#e60039"
execute if score @s doctorID matches 8 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[{color:red}].extra[8].color set value "#e60039"
execute if score @s doctorID matches 9 run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[{color:red}].extra[9].color set value "#e60039"

data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[{color:red}].color set value white

tellraw @a {color:"#8376b5",selector:"@s",extra:[" reported ",{color:"#8376b5",selector:"@e[tag=log_report]"}," as ",{color:"#e60039",text:"Gnosia"}]}
stopsound @a player gnosia:gnosiarevealed
playsound gnosia:gnosiarevealed player @a
function gnosia:log/event/report_gnosia
function gnosia:log/distribute_master
tag @e[tag=log_report] remove log_report