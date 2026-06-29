scoreboard players set @a alreadyVotedCryo 0
scoreboard players set bothCryo revoteCryo 0
scoreboard players set noCryo revoteCryo 0
function gnosia:voting/vote-suspended

tellraw @a[tag=!cryoVote,tag=!dead] [{"bold":true,"color":"yellow","text":"There has been another tie, please vote for the next procedure:"},{"bold":true,"click_event":{"action":"run_command","command":"trigger both_cryo"},"color":"aqua","text":"\n\nSend both into Cryosleep"},{"text":"\n\n"},{"bold":true,"click_event":{"action":"run_command","command":"trigger no_cryo"},"color":"red","text":"Skip Cryosleep for Today"}]
schedule function gnosia:voting/revote-cryo-result 30s