scoreboard players set @a alreadyVotedCryo 0
scoreboard players set cryoPhase voteCheck 1
scoreboard players set bothCryo revoteCryo 0
scoreboard players set noCryo revoteCryo 0
function gnosia:voicechat/enable
function gnosia:voting/vote-suspended
function gnosia:log/event/vote_suspended
function gnosia:log/vote/generate_final

tellraw @a[tag=crew,tag=!cryoVote,tag=!dead] [{"bold":true,"color":"yellow","text":"There has been another tie, please vote for the next procedure:"},{"bold":true,"click_event":{"action":"run_command","command":"trigger both_cryo"},"color":"aqua","text":"\n\nSend both into Cryosleep"},{"text":"\n\n"},{"bold":true,"click_event":{"action":"run_command","command":"trigger no_cryo"},"color":"red","text":"Skip Cryosleep for Today"}]
schedule function gnosia:voting/revote-cryo-result 30s