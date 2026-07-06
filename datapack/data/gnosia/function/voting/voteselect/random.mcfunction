tag @s add self_vote_prevention
execute if score revoteAmount voteCheck matches 0 store result score @s random_vote_select run scoreboard players get @e[sort=random,limit=1,tag=playerDummy,tag=!dead,tag=!self_vote_prevention] playerDummyID
execute unless score revoteAmount voteCheck matches 0 store result score @s random_vote_select run scoreboard players get @e[sort=random,limit=1,tag=playerDummy,tag=!dead,tag=cryoVote,tag=!self_vote_prevention] playerDummyID

execute if entity @s[tag=c1] run tag @a[tag=c1] add player_marker
execute if entity @s[tag=c2] run tag @a[tag=c2] add player_marker
execute if entity @s[tag=c3] run tag @a[tag=c3] add player_marker
execute if entity @s[tag=c4] run tag @a[tag=c4] add player_marker
execute if entity @s[tag=c5] run tag @a[tag=c5] add player_marker
execute if entity @s[tag=c6] run tag @a[tag=c6] add player_marker
execute if entity @s[tag=c7] run tag @a[tag=c7] add player_marker
execute if entity @s[tag=c8] run tag @a[tag=c8] add player_marker
execute if entity @s[tag=c9] run tag @a[tag=c9] add player_marker
execute if entity @s[tag=c10] run tag @a[tag=c10] add player_marker
execute if entity @s[tag=c11] run tag @a[tag=c11] add player_marker
execute if entity @s[tag=c12] run tag @a[tag=c12] add player_marker
execute if entity @s[tag=c13] run tag @a[tag=c13] add player_marker
execute if entity @s[tag=c14] run tag @a[tag=c14] add player_marker
execute if entity @s[tag=c15] run tag @a[tag=c15] add player_marker

tellraw @a[tag=player_marker] {"color":"aqua","italic":true,"text":"You failed to vote on time, a random vote has been assigned."}

execute if score @s alreadyVoted matches 0 if score @s random_vote_select matches 1 run scoreboard players add @e[tag=playerDummy,tag=c1] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s random_vote_select matches 2 run scoreboard players add @e[tag=playerDummy,tag=c2] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s random_vote_select matches 3 run scoreboard players add @e[tag=playerDummy,tag=c3] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s random_vote_select matches 4 run scoreboard players add @e[tag=playerDummy,tag=c4] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s random_vote_select matches 5 run scoreboard players add @e[tag=playerDummy,tag=c5] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s random_vote_select matches 6 run scoreboard players add @e[tag=playerDummy,tag=c6] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s random_vote_select matches 7 run scoreboard players add @e[tag=playerDummy,tag=c7] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s random_vote_select matches 8 run scoreboard players add @e[tag=playerDummy,tag=c8] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s random_vote_select matches 9 run scoreboard players add @e[tag=playerDummy,tag=c9] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s random_vote_select matches 10 run scoreboard players add @e[tag=playerDummy,tag=c10] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s random_vote_select matches 11 run scoreboard players add @e[tag=playerDummy,tag=c11] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s random_vote_select matches 12 run scoreboard players add @e[tag=playerDummy,tag=c12] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s random_vote_select matches 13 run scoreboard players add @e[tag=playerDummy,tag=c13] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s random_vote_select matches 14 run scoreboard players add @e[tag=playerDummy,tag=c14] voteSub 1
execute if score @s alreadyVoted matches 0 if score @s random_vote_select matches 15 run scoreboard players add @e[tag=playerDummy,tag=c15] voteSub 1

execute if score @s alreadyVoted matches 0 run scoreboard players add votesCasted temp 1
execute if score @s alreadyVoted matches 0 run playsound gnosia:select player @a[tag=player_marker] ~ ~ ~ 1 1 1
execute if score @s alreadyVoted matches 0 run scoreboard players operation @s votedFor = @s random_vote_select
execute if score @s alreadyVoted matches 0 run scoreboard players operation @a[tag=player_marker] votedFor = @s random_vote_select
execute if score @s alreadyVoted matches 1.. run tellraw @s {"color":"dark_red","text":"You already voted!"}
scoreboard players set @s alreadyVoted 1
clear @a[tag=player_marker] minecraft:written_book[minecraft:custom_data={voteBook:1b}]

scoreboard players set @s random_vote_select 0
tag @a remove player_marker
tag @s remove self_vote_prevention