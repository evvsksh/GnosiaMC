tag @e remove cryoVote
scoreboard players set #cryoVoteCount temp 0
scoreboard players set #max temp -1
scoreboard players set @e[type=armor_stand,tag=disconnect] voteSub 0

schedule function gnosia:voting/tally-votes-max2 2t