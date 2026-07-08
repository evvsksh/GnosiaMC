scoreboard players set @a alreadyVoted 0
scoreboard players set @e[tag=playerDummy] alreadyVotedDummy 0

function gnosia:written_book_revote
scoreboard players set @a voteSub 0
scoreboard players set votesCasted temp 0
function gnosia:voicechat/disable
