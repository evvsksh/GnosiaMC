execute as @s[tag=c14] run tag @s add self
execute if score @s[tag=!self] alreadyVoted matches 0 run scoreboard players add @e[type=armor_stand,tag=c14,tag=!self] voteSub 1
execute if score @s[tag=!self] alreadyVoted matches 0 run scoreboard players add votesCasted temp 1
execute if score @s[tag=!self] alreadyVoted matches 0 run playsound gnosia:select player @s ~ ~ ~ 1 1 1
#execute if score @s[tag=!self] alreadyVoted matches 0 run tellraw @a [{"color":"yellow","selector":"@s"}," voted for ",{"bold":true,"color":"red","selector":"@a[tag=c14]"}]
execute if score @s[tag=!self] alreadyVoted matches 0 run scoreboard players set @s votedFor 14
#execute if score @s alreadyVoted matches 0 run tellraw @s ["You voted for ",{"bold":true,"color":"red","selector":"@a[tag=c14]"}]
execute if score @s[tag=!self] alreadyVoted matches 1.. run tellraw @s {"color":"dark_red","text":"You already voted!"}
execute if score @s[tag=self] alreadyVoted matches 0.. run tellraw @s {"color":"dark_red","text":"You can't vote for yourself!"}
scoreboard players set @s[tag=!self] alreadyVoted 1
clear @s[tag=!self] written_book
tag @s remove self