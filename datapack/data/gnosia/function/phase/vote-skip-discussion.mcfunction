advancement revoke @s only gnosia:skip_discussion

clear @s player_head

scoreboard players set #crewAlive discussionSkipVotes 0
execute as @a[tag=!dead] run scoreboard players add #crewAlive discussionSkipVotes 1

scoreboard players operation #requiredVotes discussionSkipVotes = #crewAlive discussionSkipVotes
scoreboard players operation #requiredVotes discussionSkipVotes *= 3
scoreboard players add #requiredVotes discussionSkipVotes 4
scoreboard players operation #requiredVotes discussionSkipVotes /= 5

execute if score #count discussionSkipVotes >= #requiredVotes discussionSkipVotes run return 0

scoreboard players add #count discussionSkipVotes 1
tellraw @a {"text":"","extra":[{"color":"yellow","selector":"@p"},{"color":"aqua","text":" voted to skip the discussion."}]}
title @s actionbar {"text":"You voted to skip the discussion.","color":"aqua"}
playsound gnosia:select ui @s ~ ~ ~

scoreboard players operation #requiredVotes discussionSkipVotes = #crewAlive discussionSkipVotes
scoreboard players operation #requiredVotes discussionSkipVotes *= 3
scoreboard players add #requiredVotes discussionSkipVotes 4
scoreboard players operation #requiredVotes discussionSkipVotes /= 5

execute if score #count discussionSkipVotes >= #requiredVotes discussionSkipVotes run tellraw @a {"text":"Discussion will be skipped as the crew decided to.","color":"aqua","bold":true}
execute if score #count discussionSkipVotes >= #requiredVotes discussionSkipVotes run function gnosia:phase/skip-discussion
