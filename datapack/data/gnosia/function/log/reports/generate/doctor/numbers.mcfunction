scoreboard players operation doctorCount logState > * doctorID

execute if score doctorCount logState matches 1.. run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[].extra[1].text set value "[1] "
execute if score doctorCount logState matches 2.. run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[].extra[2].text set value "[2] "
execute if score doctorCount logState matches 3.. run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[].extra[3].text set value "[3] "
execute if score doctorCount logState matches 4.. run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[].extra[4].text set value "[4] "
execute if score doctorCount logState matches 5.. run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[].extra[5].text set value "[5] "
execute if score doctorCount logState matches 6.. run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[].extra[6].text set value "[6] "
execute if score doctorCount logState matches 7.. run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[].extra[7].text set value "[7] "
execute if score doctorCount logState matches 8.. run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[].extra[8].text set value "[8] "
execute if score doctorCount logState matches 9.. run data modify block -300 88 -1610 Items[{Slot:0b}].components."minecraft:written_book_content".pages[1].raw.extra[1].hover_event.value.extra[1].extra[].extra[9].text set value "[9] "

scoreboard players reset doctorCount logState