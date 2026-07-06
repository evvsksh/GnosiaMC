kill @e[type=armor_stand,tag=playerDummy]
scoreboard players reset * playerDummyID
execute if entity @a[tag=c1] run summon armor_stand -200 0 -1610 {CustomNameVisible:0b,Marker:1b,Invisible:1b,Tags:["c1","playerDummy"],CustomName:{"text":"Username Get Error"}}
execute if entity @a[tag=c2] run summon armor_stand -200 0 -1610 {CustomNameVisible:0b,Marker:1b,Invisible:1b,Tags:["c2","playerDummy"],CustomName:{"text":"Username Get Error"}}
execute if entity @a[tag=c3] run summon armor_stand -200 0 -1610 {CustomNameVisible:0b,Marker:1b,Invisible:1b,Tags:["c3","playerDummy"],CustomName:{"text":"Username Get Error"}}
execute if entity @a[tag=c4] run summon armor_stand -200 0 -1610 {CustomNameVisible:0b,Marker:1b,Invisible:1b,Tags:["c4","playerDummy"],CustomName:{"text":"Username Get Error"}}
execute if entity @a[tag=c5] run summon armor_stand -200 0 -1610 {CustomNameVisible:0b,Marker:1b,Invisible:1b,Tags:["c5","playerDummy"],CustomName:{"text":"Username Get Error"}}
execute if entity @a[tag=c6] run summon armor_stand -200 0 -1610 {CustomNameVisible:0b,Marker:1b,Invisible:1b,Tags:["c6","playerDummy"],CustomName:{"text":"Username Get Error"}}
execute if entity @a[tag=c7] run summon armor_stand -200 0 -1610 {CustomNameVisible:0b,Marker:1b,Invisible:1b,Tags:["c7","playerDummy"],CustomName:{"text":"Username Get Error"}}
execute if entity @a[tag=c8] run summon armor_stand -200 0 -1610 {CustomNameVisible:0b,Marker:1b,Invisible:1b,Tags:["c8","playerDummy"],CustomName:{"text":"Username Get Error"}}
execute if entity @a[tag=c9] run summon armor_stand -200 0 -1610 {CustomNameVisible:0b,Marker:1b,Invisible:1b,Tags:["c9","playerDummy"],CustomName:{"text":"Username Get Error"}}
execute if entity @a[tag=c10] run summon armor_stand -200 0 -1610 {CustomNameVisible:0b,Marker:1b,Invisible:1b,Tags:["c10","playerDummy"],CustomName:{"text":"Username Get Error"}}
execute if entity @a[tag=c11] run summon armor_stand -200 0 -1610 {CustomNameVisible:0b,Marker:1b,Invisible:1b,Tags:["c11","playerDummy"],CustomName:{"text":"Username Get Error"}}
execute if entity @a[tag=c12] run summon armor_stand -200 0 -1610 {CustomNameVisible:0b,Marker:1b,Invisible:1b,Tags:["c12","playerDummy"],CustomName:{"text":"Username Get Error"}}
execute if entity @a[tag=c13] run summon armor_stand -200 0 -1610 {CustomNameVisible:0b,Marker:1b,Invisible:1b,Tags:["c13","playerDummy"],CustomName:{"text":"Username Get Error"}}
execute if entity @a[tag=c14] run summon armor_stand -200 0 -1610 {CustomNameVisible:0b,Marker:1b,Invisible:1b,Tags:["c14","playerDummy"],CustomName:{"text":"Username Get Error"}}
execute if entity @a[tag=c15] run summon armor_stand -200 0 -1610 {CustomNameVisible:0b,Marker:1b,Invisible:1b,Tags:["c15","playerDummy"],CustomName:{"text":"Username Get Error"}}

scoreboard players set @e[tag=playerDummy,tag=c1] playerDummyID 1
scoreboard players set @e[tag=playerDummy,tag=c2] playerDummyID 2
scoreboard players set @e[tag=playerDummy,tag=c3] playerDummyID 3
scoreboard players set @e[tag=playerDummy,tag=c4] playerDummyID 4
scoreboard players set @e[tag=playerDummy,tag=c5] playerDummyID 5
scoreboard players set @e[tag=playerDummy,tag=c6] playerDummyID 6
scoreboard players set @e[tag=playerDummy,tag=c7] playerDummyID 7
scoreboard players set @e[tag=playerDummy,tag=c8] playerDummyID 8
scoreboard players set @e[tag=playerDummy,tag=c9] playerDummyID 9
scoreboard players set @e[tag=playerDummy,tag=c10] playerDummyID 10
scoreboard players set @e[tag=playerDummy,tag=c11] playerDummyID 11
scoreboard players set @e[tag=playerDummy,tag=c12] playerDummyID 12
scoreboard players set @e[tag=playerDummy,tag=c13] playerDummyID 13
scoreboard players set @e[tag=playerDummy,tag=c14] playerDummyID 14
scoreboard players set @e[tag=playerDummy,tag=c15] playerDummyID 15

execute as @a[tag=crew] run function gnosia:phase/start/get_dummy_usernames
execute as @a[tag=crew] run function gnosia:phase/start/get_dummy_roles