tag @s add get_username
setblock -299 88 -1610 oak_wall_sign[facing=east]{front_text:{messages:[{selector:"@a[tag=get_username]"},"","",""]}}

execute if score @s playersID matches 1 run data modify entity @e[limit=1,tag=playerDummy,tag=c1] CustomName set from block -299 88 -1610 front_text.messages[0].extra
execute if score @s playersID matches 2 run data modify entity @e[limit=1,tag=playerDummy,tag=c2] CustomName set from block -299 88 -1610 front_text.messages[0].extra
execute if score @s playersID matches 3 run data modify entity @e[limit=1,tag=playerDummy,tag=c3] CustomName set from block -299 88 -1610 front_text.messages[0].extra
execute if score @s playersID matches 4 run data modify entity @e[limit=1,tag=playerDummy,tag=c4] CustomName set from block -299 88 -1610 front_text.messages[0].extra
execute if score @s playersID matches 5 run data modify entity @e[limit=1,tag=playerDummy,tag=c5] CustomName set from block -299 88 -1610 front_text.messages[0].extra
execute if score @s playersID matches 6 run data modify entity @e[limit=1,tag=playerDummy,tag=c6] CustomName set from block -299 88 -1610 front_text.messages[0].extra
execute if score @s playersID matches 7 run data modify entity @e[limit=1,tag=playerDummy,tag=c7] CustomName set from block -299 88 -1610 front_text.messages[0].extra
execute if score @s playersID matches 8 run data modify entity @e[limit=1,tag=playerDummy,tag=c8] CustomName set from block -299 88 -1610 front_text.messages[0].extra
execute if score @s playersID matches 9 run data modify entity @e[limit=1,tag=playerDummy,tag=c9] CustomName set from block -299 88 -1610 front_text.messages[0].extra
execute if score @s playersID matches 10 run data modify entity @e[limit=1,tag=playerDummy,tag=c10] CustomName set from block -299 88 -1610 front_text.messages[0].extra
execute if score @s playersID matches 11 run data modify entity @e[limit=1,tag=playerDummy,tag=c11] CustomName set from block -299 88 -1610 front_text.messages[0].extra
execute if score @s playersID matches 12 run data modify entity @e[limit=1,tag=playerDummy,tag=c12] CustomName set from block -299 88 -1610 front_text.messages[0].extra
execute if score @s playersID matches 13 run data modify entity @e[limit=1,tag=playerDummy,tag=c13] CustomName set from block -299 88 -1610 front_text.messages[0].extra
execute if score @s playersID matches 14 run data modify entity @e[limit=1,tag=playerDummy,tag=c14] CustomName set from block -299 88 -1610 front_text.messages[0].extra
execute if score @s playersID matches 15 run data modify entity @e[limit=1,tag=playerDummy,tag=c15] CustomName set from block -299 88 -1610 front_text.messages[0].extra

setblock -299 88 -1610 minecraft:air
tag @s remove get_username