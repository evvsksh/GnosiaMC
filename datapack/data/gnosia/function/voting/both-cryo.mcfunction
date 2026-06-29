tellraw @a {"color":"aqua","text":"Both crew members will go into cryosleep, as decided by the rest of the crew"}
schedule function gnosia:door-vote-opening 5s
schedule function gnosia:phase/tp-to-cryosleep 10s

function gnosia:ship-lights/ship-light-normal
team modify crew color white
team modify engineer_claim color white
team modify doctor_claim color white
team modify guard_duty color white
particle minecraft:snowflake -269 86 -1610 0 0 0 .5 300 force