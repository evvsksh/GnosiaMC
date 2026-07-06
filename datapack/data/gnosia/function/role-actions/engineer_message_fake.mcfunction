function gnosia:mark_player_dummy
tag @e[tag=dummy_marker] add exclude
tag @e[tag=dummy_marker] remove dummy_marker
function gnosia:log/reports/establish_exclusions
execute if entity @e[tag=playerDummy,tag=!dead,tag=!exclude] run tellraw @s {bold:true,color:"#187fc4",text:"Disguise Yourself & Lie"}

execute if entity @e[tag=playerDummy,tag=c1,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 1"},color:"#187fc4",selector:"@e[tag=playerDummy,tag=c1,tag=!dead,tag=!exclude]"}
execute if entity @e[tag=playerDummy,tag=c2,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 2"},color:"#187fc4",selector:"@e[tag=playerDummy,tag=c2,tag=!dead,tag=!exclude]"}
execute if entity @e[tag=playerDummy,tag=c3,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 3"},color:"#187fc4",selector:"@e[tag=playerDummy,tag=c3,tag=!dead,tag=!exclude]"}
execute if entity @e[tag=playerDummy,tag=c4,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 4"},color:"#187fc4",selector:"@e[tag=playerDummy,tag=c4,tag=!dead,tag=!exclude]"}
execute if entity @e[tag=playerDummy,tag=c5,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 5"},color:"#187fc4",selector:"@e[tag=playerDummy,tag=c5,tag=!dead,tag=!exclude]"}
execute if entity @e[tag=playerDummy,tag=c6,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 6"},color:"#187fc4",selector:"@e[tag=playerDummy,tag=c6,tag=!dead,tag=!exclude]"}
execute if entity @e[tag=playerDummy,tag=c7,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 7"},color:"#187fc4",selector:"@e[tag=playerDummy,tag=c7,tag=!dead,tag=!exclude]"}
execute if entity @e[tag=playerDummy,tag=c8,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 8"},color:"#187fc4",selector:"@e[tag=playerDummy,tag=c8,tag=!dead,tag=!exclude]"}
execute if entity @e[tag=playerDummy,tag=c9,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 9"},color:"#187fc4",selector:"@e[tag=playerDummy,tag=c9,tag=!dead,tag=!exclude]"}
execute if entity @e[tag=playerDummy,tag=c10,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 10"},color:"#187fc4",selector:"@e[tag=playerDummy,tag=c10,tag=!dead,tag=!exclude]"}
execute if entity @e[tag=playerDummy,tag=c11,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 11"},color:"#187fc4",selector:"@e[tag=playerDummy,tag=c11,tag=!dead,tag=!exclude]"}
execute if entity @e[tag=playerDummy,tag=c12,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 12"},color:"#187fc4",selector:"@e[tag=playerDummy,tag=c12,tag=!dead,tag=!exclude]"}
execute if entity @e[tag=playerDummy,tag=c13,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 13"},color:"#187fc4",selector:"@e[tag=playerDummy,tag=c13,tag=!dead,tag=!exclude]"}
execute if entity @e[tag=playerDummy,tag=c14,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 14"},color:"#187fc4",selector:"@e[tag=playerDummy,tag=c14,tag=!dead,tag=!exclude]"}
execute if entity @e[tag=playerDummy,tag=c15,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 15"},color:"#187fc4",selector:"@e[tag=playerDummy,tag=c15,tag=!dead,tag=!exclude]"}

scoreboard players operation @s reportTarget = @e[sort=random,limit=1,tag=playerDummy,tag=!dead,tag=!exclude] playersID
scoreboard players set @s reportRole 1

tellraw @s [{bold:true,color:"#187fc4",text:"\nInvestigate your target as:"},{text:"\n"},{bold:false,click_event:{action:"run_command","command":"/trigger fakeCheckResult set 1"},color:"#6eba2b",text:"Human"},{text:"\n"},{bold:false,click_event:{action:"run_command","command":"/trigger fakeCheckResult set 2"},color:"#e60039",text:"Gnosia"}]
tag @e[tag=exclude] remove exclude