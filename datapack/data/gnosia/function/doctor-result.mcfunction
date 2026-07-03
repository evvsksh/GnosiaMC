execute as @a[tag=docSearch,tag=gnosia] run tellraw @a[tag=doctor] [{"selector":"@s"}," turned out to be ",{"bold":true,"color":"#e60039","text":"Gnosia"}]
execute as @a[tag=docSearch,tag=!gnosia] run tellraw @a[tag=doctor] [{"selector":"@s"}," turned out to be ",{"bold":true,"color":"#6eba2b","text":"Human"}]

execute if entity @a[tag=docSearch,tag=!gnosia,tag=c1] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c1 1
execute if entity @a[tag=docSearch,tag=gnosia,tag=c1] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c1 2

execute if entity @a[tag=docSearch,tag=!gnosia,tag=c2] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c2 1
execute if entity @a[tag=docSearch,tag=gnosia,tag=c2] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c2 2

execute if entity @a[tag=docSearch,tag=!gnosia,tag=c3] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c3 1
execute if entity @a[tag=docSearch,tag=gnosia,tag=c3] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c3 2

execute if entity @a[tag=docSearch,tag=!gnosia,tag=c4] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c4 1
execute if entity @a[tag=docSearch,tag=gnosia,tag=c4] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c4 2

execute if entity @a[tag=docSearch,tag=!gnosia,tag=c5] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c5 1
execute if entity @a[tag=docSearch,tag=gnosia,tag=c5] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c5 2

execute if entity @a[tag=docSearch,tag=!gnosia,tag=c6] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c6 1
execute if entity @a[tag=docSearch,tag=gnosia,tag=c6] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c6 2

execute if entity @a[tag=docSearch,tag=!gnosia,tag=c7] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c7 1
execute if entity @a[tag=docSearch,tag=gnosia,tag=c7] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c7 2

execute if entity @a[tag=docSearch,tag=!gnosia,tag=c8] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c8 1
execute if entity @a[tag=docSearch,tag=gnosia,tag=c8] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c8 2

execute if entity @a[tag=docSearch,tag=!gnosia,tag=c9] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c9 1
execute if entity @a[tag=docSearch,tag=gnosia,tag=c9] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c9 2

execute if entity @a[tag=docSearch,tag=!gnosia,tag=c10] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c10 1
execute if entity @a[tag=docSearch,tag=gnosia,tag=c10] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c10 2

execute if entity @a[tag=docSearch,tag=!gnosia,tag=c11] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c11 1
execute if entity @a[tag=docSearch,tag=gnosia,tag=c11] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c11 2

execute if entity @a[tag=docSearch,tag=!gnosia,tag=c12] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c12 1
execute if entity @a[tag=docSearch,tag=gnosia,tag=c12] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c12 2

execute if entity @a[tag=docSearch,tag=!gnosia,tag=c13] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c13 1
execute if entity @a[tag=docSearch,tag=gnosia,tag=c13] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c13 2

execute if entity @a[tag=docSearch,tag=!gnosia,tag=c14] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c14 1
execute if entity @a[tag=docSearch,tag=gnosia,tag=c14] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c14 2

execute if entity @a[tag=docSearch,tag=!gnosia,tag=c15] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c15 1
execute if entity @a[tag=docSearch,tag=gnosia,tag=c15] run scoreboard players set @a[tag=doctor,tag=!dead] doctorReport_c15 2

tag @a remove docSearch