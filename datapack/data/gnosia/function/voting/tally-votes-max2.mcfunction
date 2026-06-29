tag @e remove cryoVote
scoreboard players set #max temp 0
scoreboard players operation #max temp > @e[tag=disconnect] vote
execute as @e[tag=disconnect] if score @s vote = #max temp run tag @s add cryoVote
scoreboard players set #cryoVoteCount temp 0
execute as @e[tag=cryoVote,type=armor_stand] run scoreboard players add #cryoVoteCount temp 1

function gnosia:voting/transfer-cryovote-tag
execute if score #cryoVoteCount temp matches 2.. run function gnosia:voting/vote-result-tie
execute if score #cryoVoteCount temp matches 1 run function gnosia:voting/vote-result