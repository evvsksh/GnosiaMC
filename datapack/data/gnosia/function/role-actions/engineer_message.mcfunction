tag @s add exclude
execute if entity @a[tag=crew,tag=!dead,tag=!exclude] run tellraw @s {bold:true,color:"#187fc4",text:"Who will you investigate?"}

execute if entity @a[tag=c1,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 1"},color:"#187fc4",selector:"@a[tag=c1,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c2,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 2"},color:"#187fc4",selector:"@a[tag=c2,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c3,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 3"},color:"#187fc4",selector:"@a[tag=c3,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c4,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 4"},color:"#187fc4",selector:"@a[tag=c4,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c5,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 5"},color:"#187fc4",selector:"@a[tag=c5,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c6,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 6"},color:"#187fc4",selector:"@a[tag=c6,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c7,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 7"},color:"#187fc4",selector:"@a[tag=c7,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c8,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 8"},color:"#187fc4",selector:"@a[tag=c8,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c9,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 9"},color:"#187fc4",selector:"@a[tag=c9,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c10,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 10"},color:"#187fc4",selector:"@a[tag=c10,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c11,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 11"},color:"#187fc4",selector:"@a[tag=c11,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c12,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 12"},color:"#187fc4",selector:"@a[tag=c12,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c13,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 13"},color:"#187fc4",selector:"@a[tag=c13,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c14,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 14"},color:"#187fc4",selector:"@a[tag=c14,tag=!dead,tag=!exclude]"}
execute if entity @a[tag=c15,tag=!dead,tag=!exclude] run tellraw @s {click_event:{action:"run_command","command":"/trigger eng_select set 15"},color:"#187fc4",selector:"@a[tag=c15,tag=!dead,tag=!exclude]"}

tag @s remove exclude