scoreboard players set voteCheck voteCheck 0
function gnosia:disable-bossbars
tp @e[tag=votePos] -269 87.5 -1610 0 0
clear @a minecraft:written_book[minecraft:custom_data={voteBook:1b}]
#setblock -160 237 -300 redstone_block

schedule function gnosia:voting/tally-votes-sequence 2t

execute if score revoteAmount voteCheck matches 0 run function gnosia:log/vote/generate_vote
execute if score revoteAmount voteCheck matches 1.. run function gnosia:log/vote/generate_revote