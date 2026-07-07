execute if entity @s[tag=engineer] run data modify block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[0][].Marker set value 1b

execute unless entity @s[tag=engineer] if score @s engineerID matches 1 run data modify block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[1][].Marker set value 1b
execute unless entity @s[tag=engineer] if score @s engineerID matches 2 run data modify block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[2][].Marker set value 1b
execute unless entity @s[tag=engineer] if score @s engineerID matches 3 run data modify block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[3][].Marker set value 1b
execute unless entity @s[tag=engineer] if score @s engineerID matches 4 run data modify block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[4][].Marker set value 1b
execute unless entity @s[tag=engineer] if score @s engineerID matches 5 run data modify block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[5][].Marker set value 1b
execute unless entity @s[tag=engineer] if score @s engineerID matches 6 run data modify block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[6][].Marker set value 1b
execute unless entity @s[tag=engineer] if score @s engineerID matches 7 run data modify block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[7][].Marker set value 1b
execute unless entity @s[tag=engineer] if score @s engineerID matches 8 run data modify block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[8][].Marker set value 1b
execute unless entity @s[tag=engineer] if score @s engineerID matches 9 run data modify block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[9][].Marker set value 1b

execute if data block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[][{Marker:1b,id:1i}] run tag @e[tag=playerDummy,tag=c1,tag=!dead] add exclude
execute if data block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[][{Marker:1b,id:2i}] run tag @e[tag=playerDummy,tag=c2,tag=!dead] add exclude
execute if data block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[][{Marker:1b,id:3i}] run tag @e[tag=playerDummy,tag=c3,tag=!dead] add exclude
execute if data block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[][{Marker:1b,id:4i}] run tag @e[tag=playerDummy,tag=c4,tag=!dead] add exclude
execute if data block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[][{Marker:1b,id:5i}] run tag @e[tag=playerDummy,tag=c5,tag=!dead] add exclude
execute if data block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[][{Marker:1b,id:6i}] run tag @e[tag=playerDummy,tag=c6,tag=!dead] add exclude
execute if data block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[][{Marker:1b,id:7i}] run tag @e[tag=playerDummy,tag=c7,tag=!dead] add exclude
execute if data block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[][{Marker:1b,id:8i}] run tag @e[tag=playerDummy,tag=c8,tag=!dead] add exclude
execute if data block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[][{Marker:1b,id:9i}] run tag @e[tag=playerDummy,tag=c9,tag=!dead] add exclude
execute if data block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[][{Marker:1b,id:10i}] run tag @e[tag=playerDummy,tag=c10,tag=!dead] add exclude
execute if data block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[][{Marker:1b,id:11i}] run tag @e[tag=playerDummy,tag=c11,tag=!dead] add exclude
execute if data block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[][{Marker:1b,id:12i}] run tag @e[tag=playerDummy,tag=c12,tag=!dead] add exclude
execute if data block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[][{Marker:1b,id:13i}] run tag @e[tag=playerDummy,tag=c13,tag=!dead] add exclude
execute if data block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[][{Marker:1b,id:14i}] run tag @e[tag=playerDummy,tag=c14,tag=!dead] add exclude
execute if data block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[][{Marker:1b,id:15i}] run tag @e[tag=playerDummy,tag=c15,tag=!dead] add exclude

data modify block -300 88 -1610 Items[{Slot:1b}].components."minecraft:custom_data".checkedAlready[][].Marker set value 0b