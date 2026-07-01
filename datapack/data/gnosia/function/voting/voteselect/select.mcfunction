execute if score @s alreadyVoted matches 0 if score @s vote_select matches 1 run scoreboard players add @e[type=armor_stand,tag=c1] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s vote_select matches 2 run scoreboard players add @e[type=armor_stand,tag=c2] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s vote_select matches 3 run scoreboard players add @e[type=armor_stand,tag=c3] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s vote_select matches 4 run scoreboard players add @e[type=armor_stand,tag=c4] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s vote_select matches 5 run scoreboard players add @e[type=armor_stand,tag=c5] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s vote_select matches 6 run scoreboard players add @e[type=armor_stand,tag=c6] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s vote_select matches 7 run scoreboard players add @e[type=armor_stand,tag=c7] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s vote_select matches 8 run scoreboard players add @e[type=armor_stand,tag=c8] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s vote_select matches 9 run scoreboard players add @e[type=armor_stand,tag=c9] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s vote_select matches 10 run scoreboard players add @e[type=armor_stand,tag=c10] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s vote_select matches 11 run scoreboard players add @e[type=armor_stand,tag=c11] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s vote_select matches 12 run scoreboard players add @e[type=armor_stand,tag=c12] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s vote_select matches 13 run scoreboard players add @e[type=armor_stand,tag=c13] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s vote_select matches 14 run scoreboard players add @e[type=armor_stand,tag=c14] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s vote_select matches 15 run scoreboard players add @e[type=armor_stand,tag=c15] voteSub 1

execute if score @s alreadyVoted matches 0 run scoreboard players add votesCasted temp 1
execute if score @s alreadyVoted matches 0 run playsound gnosia:select player @s ~ ~ ~ 1 1 1
execute if score @s alreadyVoted matches 0 run scoreboard players operation @s votedFor = @s vote_select
execute if score @s alreadyVoted matches 1.. run tellraw @s {"color":"dark_red","text":"You already voted!"}
scoreboard players set @s alreadyVoted 1
clear @s minecraft:written_book[minecraft:custom_data={voteBook:1b}]