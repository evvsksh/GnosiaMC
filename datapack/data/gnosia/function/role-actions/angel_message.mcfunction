tag @s add exclude
execute if entity @a[tag=!dead,tag=!exclude] run tellraw @s {bold:true,color:"#f6ad3c",text:"Who will you protect?"}

execute if entity @a[tag=c1,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger ang_select set 1"},color:"#f6ad3c",selector:"@a[tag=c1,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c2,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger ang_select set 2"},color:"#f6ad3c",selector:"@a[tag=c2,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c3,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger ang_select set 3"},color:"#f6ad3c",selector:"@a[tag=c3,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c4,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger ang_select set 4"},color:"#f6ad3c",selector:"@a[tag=c4,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c5,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger ang_select set 5"},color:"#f6ad3c",selector:"@a[tag=c5,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c6,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger ang_select set 6"},color:"#f6ad3c",selector:"@a[tag=c6,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c7,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger ang_select set 7"},color:"#f6ad3c",selector:"@a[tag=c7,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c8,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger ang_select set 8"},color:"#f6ad3c",selector:"@a[tag=c8,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c9,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger ang_select set 9"},color:"#f6ad3c",selector:"@a[tag=c9,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c10,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger ang_select set 10"},color:"#f6ad3c",selector:"@a[tag=c10,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c11,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger ang_select set 11"},color:"#f6ad3c",selector:"@a[tag=c11,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c12,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger ang_select set 12"},color:"#f6ad3c",selector:"@a[tag=c12,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c13,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger ang_select set 13"},color:"#f6ad3c",selector:"@a[tag=c13,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c14,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger ang_select set 14"},color:"#f6ad3c",selector:"@a[tag=c14,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c15,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger ang_select set 15"},color:"#f6ad3c",selector:"@a[tag=c15,tag=!dead,tag=!exclude]"}

tag @s remove exclude