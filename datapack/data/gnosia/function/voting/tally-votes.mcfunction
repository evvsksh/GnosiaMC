scoreboard players set voteCheck voteCheck 0
function gnosia:disable-bossbars
tp @e[tag=votePos] -269 87.5 -1610 0 0
clear @a minecraft:written_book[minecraft:custom_data={voteBook:1b}]
#setblock -160 237 -300 redstone_block

schedule function gnosia:voting/tally-votes-sequence 2t