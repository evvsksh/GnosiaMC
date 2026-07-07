tag @s add remind_teammates

tellraw @s {bold:true,color:"#e60039",text:"Gnosia:"}
execute if entity @s[tag=!c1] as @e[tag=playerDummy,tag=gnosia,tag=c1] run tellraw @a[tag=remind_teammates] {color:"#e60039",selector:"@s"}
execute if entity @s[tag=!c2] as @e[tag=playerDummy,tag=gnosia,tag=c2] run tellraw @a[tag=remind_teammates] {color:"#e60039",selector:"@s"}
execute if entity @s[tag=!c3] as @e[tag=playerDummy,tag=gnosia,tag=c3] run tellraw @a[tag=remind_teammates] {color:"#e60039",selector:"@s"}
execute if entity @s[tag=!c4] as @e[tag=playerDummy,tag=gnosia,tag=c4] run tellraw @a[tag=remind_teammates] {color:"#e60039",selector:"@s"}
execute if entity @s[tag=!c5] as @e[tag=playerDummy,tag=gnosia,tag=c5] run tellraw @a[tag=remind_teammates] {color:"#e60039",selector:"@s"}
execute if entity @s[tag=!c6] as @e[tag=playerDummy,tag=gnosia,tag=c6] run tellraw @a[tag=remind_teammates] {color:"#e60039",selector:"@s"}
execute if entity @s[tag=!c7] as @e[tag=playerDummy,tag=gnosia,tag=c7] run tellraw @a[tag=remind_teammates] {color:"#e60039",selector:"@s"}
execute if entity @s[tag=!c8] as @e[tag=playerDummy,tag=gnosia,tag=c8] run tellraw @a[tag=remind_teammates] {color:"#e60039",selector:"@s"}
execute if entity @s[tag=!c9] as @e[tag=playerDummy,tag=gnosia,tag=c9] run tellraw @a[tag=remind_teammates] {color:"#e60039",selector:"@s"}
execute if entity @s[tag=!c10] as @e[tag=playerDummy,tag=gnosia,tag=c10] run tellraw @a[tag=remind_teammates] {color:"#e60039",selector:"@s"}
execute if entity @s[tag=!c11] as @e[tag=playerDummy,tag=gnosia,tag=c11] run tellraw @a[tag=remind_teammates] {color:"#e60039",selector:"@s"}
execute if entity @s[tag=!c12] as @e[tag=playerDummy,tag=gnosia,tag=c12] run tellraw @a[tag=remind_teammates] {color:"#e60039",selector:"@s"}
execute if entity @s[tag=!c13] as @e[tag=playerDummy,tag=gnosia,tag=c13] run tellraw @a[tag=remind_teammates] {color:"#e60039",selector:"@s"}
execute if entity @s[tag=!c14] as @e[tag=playerDummy,tag=gnosia,tag=c14] run tellraw @a[tag=remind_teammates] {color:"#e60039",selector:"@s"}
execute if entity @s[tag=!c15] as @e[tag=playerDummy,tag=gnosia,tag=c15] run tellraw @a[tag=remind_teammates] {color:"#e60039",selector:"@s"}

tag @s remove remind_teammates