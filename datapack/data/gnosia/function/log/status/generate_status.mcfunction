data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[0].raw.extra append value {text:"\n\n[Crew Status]",color:"dark_green",bold:false,hover_event:{action:show_text,value:{text:"Crew Status:",extra:[""]}},click_event:{action:run_command,command:"trigger checkTeam set 1"}}

execute as @a[tag=c1] run function gnosia:log/status/player_status
execute as @a[tag=c2] run function gnosia:log/status/player_status
execute as @a[tag=c3] run function gnosia:log/status/player_status
execute as @a[tag=c4] run function gnosia:log/status/player_status
execute as @a[tag=c5] run function gnosia:log/status/player_status
execute as @a[tag=c6] run function gnosia:log/status/player_status
execute as @a[tag=c7] run function gnosia:log/status/player_status
execute as @a[tag=c8] run function gnosia:log/status/player_status
execute as @a[tag=c9] run function gnosia:log/status/player_status
execute as @a[tag=c10] run function gnosia:log/status/player_status
execute as @a[tag=c11] run function gnosia:log/status/player_status
execute as @a[tag=c12] run function gnosia:log/status/player_status
execute as @a[tag=c13] run function gnosia:log/status/player_status
execute as @a[tag=c14] run function gnosia:log/status/player_status
execute as @a[tag=c15] run function gnosia:log/status/player_status

data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[0].raw.extra[-1].hover_event.value.extra append value {color:"#e60039",text:"\n\nIf you are Gnosia, click to view teammates."}