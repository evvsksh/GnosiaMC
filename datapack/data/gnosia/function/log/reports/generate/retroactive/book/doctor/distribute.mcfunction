tellraw @s {color:aqua,text:"Please report the results of your previous investigation."}

execute if score @s doctorID matches 1 run function gnosia:log/reports/generate/retroactive/book/doctor/id_1
execute if score @s doctorID matches 2 run function gnosia:log/reports/generate/retroactive/book/doctor/id_2
execute if score @s doctorID matches 3 run function gnosia:log/reports/generate/retroactive/book/doctor/id_3
execute if score @s doctorID matches 4 run function gnosia:log/reports/generate/retroactive/book/doctor/id_4
execute if score @s doctorID matches 5 run function gnosia:log/reports/generate/retroactive/book/doctor/id_5
execute if score @s doctorID matches 6 run function gnosia:log/reports/generate/retroactive/book/doctor/id_6
execute if score @s doctorID matches 7 run function gnosia:log/reports/generate/retroactive/book/doctor/id_7
execute if score @s doctorID matches 8 run function gnosia:log/reports/generate/retroactive/book/doctor/id_8
execute if score @s doctorID matches 9 run function gnosia:log/reports/generate/retroactive/book/doctor/id_9