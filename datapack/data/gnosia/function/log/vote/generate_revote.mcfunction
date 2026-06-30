item replace block -300 88 -1610 container.2 with minecraft:written_book[written_book_content={title:"generate_revote",author:"",pages:[{raw:{text:"\n[Revote Results]",color:"dark_aqua",bold:false,hover_event:{action:show_text,value:{text:"Revote Results:",extra:[""]}}}}]}]

execute as @a[tag=c1] run function gnosia:log/vote/list_revote
execute as @a[tag=c2] run function gnosia:log/vote/list_revote
execute as @a[tag=c3] run function gnosia:log/vote/list_revote
execute as @a[tag=c4] run function gnosia:log/vote/list_revote
execute as @a[tag=c5] run function gnosia:log/vote/list_revote
execute as @a[tag=c6] run function gnosia:log/vote/list_revote
execute as @a[tag=c7] run function gnosia:log/vote/list_revote
execute as @a[tag=c8] run function gnosia:log/vote/list_revote
execute as @a[tag=c9] run function gnosia:log/vote/list_revote
execute as @a[tag=c10] run function gnosia:log/vote/list_revote
execute as @a[tag=c11] run function gnosia:log/vote/list_revote
execute as @a[tag=c12] run function gnosia:log/vote/list_revote
execute as @a[tag=c13] run function gnosia:log/vote/list_revote
execute as @a[tag=c14] run function gnosia:log/vote/list_revote
execute as @a[tag=c15] run function gnosia:log/vote/list_revote

data modify block -300 88 -1610 Items[{Slot:1b}].components."minecraft:written_book_content".pages[0].raw.extra append from block -300 88 -1610 Items[{Slot:2b}].components."minecraft:written_book_content".pages[0].raw
item replace block -300 88 -1610 container.2 with minecraft:air