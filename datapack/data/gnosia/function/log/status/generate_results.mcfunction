data remove block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[0].raw.extra[-1]
data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[0].raw.extra append value {text:"\n\n[Game Results]",color:"dark_green",bold:false,hover_event:{action:show_text,value:{text:"Result:",extra:[""]}}}

execute if score winRole logState matches 1 run function gnosia:log/status/human_win
execute if score winRole logState matches 2 run function gnosia:log/status/gnosia_win
execute if score winRole logState matches 3 run function gnosia:log/status/bug_win

scoreboard players set winRole logState 0

data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[0].raw.extra[-1].hover_event.value.extra append value {text:"\n\nRoles:"}

execute as @a[tag=c1] run function gnosia:log/status/role_reveal
execute as @a[tag=c2] run function gnosia:log/status/role_reveal
execute as @a[tag=c3] run function gnosia:log/status/role_reveal
execute as @a[tag=c4] run function gnosia:log/status/role_reveal
execute as @a[tag=c5] run function gnosia:log/status/role_reveal
execute as @a[tag=c6] run function gnosia:log/status/role_reveal
execute as @a[tag=c7] run function gnosia:log/status/role_reveal
execute as @a[tag=c8] run function gnosia:log/status/role_reveal
execute as @a[tag=c9] run function gnosia:log/status/role_reveal
execute as @a[tag=c10] run function gnosia:log/status/role_reveal
execute as @a[tag=c11] run function gnosia:log/status/role_reveal
execute as @a[tag=c12] run function gnosia:log/status/role_reveal
execute as @a[tag=c13] run function gnosia:log/status/role_reveal
execute as @a[tag=c14] run function gnosia:log/status/role_reveal
execute as @a[tag=c15] run function gnosia:log/status/role_reveal