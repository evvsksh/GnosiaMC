execute if score @s alreadyVotedCryo matches 0 if score cryoPhase voteCheck matches 1 run scoreboard players add noCryo revoteCryo 1
execute if score @s alreadyVotedCryo matches 0 if score cryoPhase voteCheck matches 1 run playsound gnosia:select player @s ~ ~ ~ 1 1 1
execute if score @s alreadyVotedCryo matches 0 if score cryoPhase voteCheck matches 1 run tellraw @a [{"selector":"@s"}," voted to",{"bold":true,"color":"red","text":" Freeze Nobody"}]
execute if score @s alreadyVotedCryo matches 0 if score cryoPhase voteCheck matches 1 run function gnosia:log/vote/list_final_none
execute if score @s alreadyVotedCryo matches 1 if score cryoPhase voteCheck matches 1 run tellraw @s {"color":"dark_red","text":"You already voted!"}
execute if score cryoPhase voteCheck matches 1 run scoreboard players set @s alreadyVotedCryo 1
execute if score cryoPhase voteCheck matches 0 run tellraw @s {"color":"dark_red","text":"Now isn't the time for that."}