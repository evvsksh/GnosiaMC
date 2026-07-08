scoreboard players set @a alreadyVoted 0
scoreboard players set @e[tag=playerDummy] alreadyVotedDummy 0
scoreboard players set revoteAmount voteCheck 0
tag @e remove cryoVote
clear @a minecraft:written_book[minecraft:custom_data~{retroactiveReportBook:1b}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{retroactiveReportBook:1b}}}}]
function gnosia:written_book_vote
scoreboard players set @e[tag=playerDummy] voteSub 0
scoreboard players set votesCasted temp 0
function gnosia:voicechat/disable
