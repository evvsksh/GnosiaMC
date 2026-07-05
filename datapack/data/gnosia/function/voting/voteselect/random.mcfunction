tag @s add self_vote_prevention
execute if score revoteAmount voteCheck matches 0 store result score @s vote_select run scoreboard players get @r[tag=crew,tag=!dead,tag=!self_vote_prevention] playersID
execute unless score revoteAmount voteCheck matches 0 store result score @s vote_select run scoreboard players get @r[tag=!dead,tag=cryoVote,tag=!self_vote_prevention] playersID
tellraw @s {"color":"aqua","italic":true,"text":"You failed to vote on time, a random vote has been assigned."}
tag @s remove self_vote_prevention