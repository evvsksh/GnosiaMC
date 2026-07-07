tag @s add remind_teammates

tellraw @s {bold:true,color:"#46b035",text:"Guard Duty:"}
execute if entity @s[tag=!c1] as @e[tag=playerDummy,tag=guard,tag=c1] run tellraw @a[tag=remind_teammates] {color:"#46b035",selector:"@s"}
execute if entity @s[tag=!c2] as @e[tag=playerDummy,tag=guard,tag=c2] run tellraw @a[tag=remind_teammates] {color:"#46b035",selector:"@s"}
execute if entity @s[tag=!c3] as @e[tag=playerDummy,tag=guard,tag=c3] run tellraw @a[tag=remind_teammates] {color:"#46b035",selector:"@s"}
execute if entity @s[tag=!c4] as @e[tag=playerDummy,tag=guard,tag=c4] run tellraw @a[tag=remind_teammates] {color:"#46b035",selector:"@s"}
execute if entity @s[tag=!c5] as @e[tag=playerDummy,tag=guard,tag=c5] run tellraw @a[tag=remind_teammates] {color:"#46b035",selector:"@s"}
execute if entity @s[tag=!c6] as @e[tag=playerDummy,tag=guard,tag=c6] run tellraw @a[tag=remind_teammates] {color:"#46b035",selector:"@s"}
execute if entity @s[tag=!c7] as @e[tag=playerDummy,tag=guard,tag=c7] run tellraw @a[tag=remind_teammates] {color:"#46b035",selector:"@s"}
execute if entity @s[tag=!c8] as @e[tag=playerDummy,tag=guard,tag=c8] run tellraw @a[tag=remind_teammates] {color:"#46b035",selector:"@s"}
execute if entity @s[tag=!c9] as @e[tag=playerDummy,tag=guard,tag=c9] run tellraw @a[tag=remind_teammates] {color:"#46b035",selector:"@s"}
execute if entity @s[tag=!c10] as @e[tag=playerDummy,tag=guard,tag=c10] run tellraw @a[tag=remind_teammates] {color:"#46b035",selector:"@s"}
execute if entity @s[tag=!c11] as @e[tag=playerDummy,tag=guard,tag=c11] run tellraw @a[tag=remind_teammates] {color:"#46b035",selector:"@s"}
execute if entity @s[tag=!c12] as @e[tag=playerDummy,tag=guard,tag=c12] run tellraw @a[tag=remind_teammates] {color:"#46b035",selector:"@s"}
execute if entity @s[tag=!c13] as @e[tag=playerDummy,tag=guard,tag=c13] run tellraw @a[tag=remind_teammates] {color:"#46b035",selector:"@s"}
execute if entity @s[tag=!c14] as @e[tag=playerDummy,tag=guard,tag=c14] run tellraw @a[tag=remind_teammates] {color:"#46b035",selector:"@s"}
execute if entity @s[tag=!c15] as @e[tag=playerDummy,tag=guard,tag=c15] run tellraw @a[tag=remind_teammates] {color:"#46b035",selector:"@s"}

tag @s remove remind_teammates