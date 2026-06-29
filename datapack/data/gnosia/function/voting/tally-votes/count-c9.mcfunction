execute if score @e[tag=c9,limit=1,type=armor_stand] voteSub matches 1.. run playsound gnosia:votecount player @a ~ ~ ~ 1 1 1
execute if score @e[tag=c9,limit=1,type=armor_stand] voteSub matches 1.. run scoreboard players add @e[tag=c9,limit=1,type=armor_stand] vote 1
execute if score @e[tag=c9,limit=1,type=armor_stand] voteSub matches 1.. run scoreboard players remove @e[tag=c9,limit=1,type=armor_stand] voteSub 1
