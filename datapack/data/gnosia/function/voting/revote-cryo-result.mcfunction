execute if score bothCryo revoteCryo >= noCryo revoteCryo run function gnosia:voting/both-cryo
execute if score bothCryo revoteCryo < noCryo revoteCryo run function gnosia:voting/no-cryo
scoreboard players set revoteAmount voteCheck 0
playsound gnosia:voted player @a ~ ~ ~ 1 1 1
function gnosia:light-vote-blue