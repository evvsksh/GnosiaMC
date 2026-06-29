tellraw @a {"color":"#FF512E","text":"No one will go into Cryosleep for today, as decided by the rest of the crew"}
tag @a remove cryoVote
schedule function gnosia:door-vote-opening 5s
schedule function gnosia:phase/warp-drive 10s

function gnosia:ship-lights/ship-light-normal
team modify crew color white
team modify engineer_claim color white
team modify doctor_claim color white
team modify guard_duty color white

scoreboard players set showRoleActionbar gameStatus 0