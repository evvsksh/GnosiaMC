execute as @e[tag=deathAnnounce,tag=c1] run tellraw @a {color:"#e60039",selector:"@s",extra:[{text:" disappeared."}]}
execute as @e[tag=deathAnnounce,tag=c2] run tellraw @a {color:"#e60039",selector:"@s",extra:[{text:" disappeared."}]}
execute as @e[tag=deathAnnounce,tag=c3] run tellraw @a {color:"#e60039",selector:"@s",extra:[{text:" disappeared."}]}
execute as @e[tag=deathAnnounce,tag=c4] run tellraw @a {color:"#e60039",selector:"@s",extra:[{text:" disappeared."}]}
execute as @e[tag=deathAnnounce,tag=c5] run tellraw @a {color:"#e60039",selector:"@s",extra:[{text:" disappeared."}]}
execute as @e[tag=deathAnnounce,tag=c6] run tellraw @a {color:"#e60039",selector:"@s",extra:[{text:" disappeared."}]}
execute as @e[tag=deathAnnounce,tag=c7] run tellraw @a {color:"#e60039",selector:"@s",extra:[{text:" disappeared."}]}
execute as @e[tag=deathAnnounce,tag=c8] run tellraw @a {color:"#e60039",selector:"@s",extra:[{text:" disappeared."}]}
execute as @e[tag=deathAnnounce,tag=c9] run tellraw @a {color:"#e60039",selector:"@s",extra:[{text:" disappeared."}]}
execute as @e[tag=deathAnnounce,tag=c10] run tellraw @a {color:"#e60039",selector:"@s",extra:[{text:" disappeared."}]}
execute as @e[tag=deathAnnounce,tag=c11] run tellraw @a {color:"#e60039",selector:"@s",extra:[{text:" disappeared."}]}
execute as @e[tag=deathAnnounce,tag=c12] run tellraw @a {color:"#e60039",selector:"@s",extra:[{text:" disappeared."}]}
execute as @e[tag=deathAnnounce,tag=c13] run tellraw @a {color:"#e60039",selector:"@s",extra:[{text:" disappeared."}]}
execute as @e[tag=deathAnnounce,tag=c14] run tellraw @a {color:"#e60039",selector:"@s",extra:[{text:" disappeared."}]}
execute as @e[tag=deathAnnounce,tag=c15] run tellraw @a {color:"#e60039",selector:"@s",extra:[{text:" disappeared."}]}
execute unless entity @e[tag=deathAnnounce] run tellraw @a {color:"#6eba2b",text:"Nobody disappeared."}

execute if entity @e[tag=deathAnnounce] run playsound gnosia:gnosiakill player @a 0 0 0 0.1 1 0.5
execute unless entity @e[tag=deathAnnounce] run playsound gnosia:angelsave player @a 0 0 0 0.1 1 0.5

tag @e[tag=deathAnnounce] remove deathAnnounce