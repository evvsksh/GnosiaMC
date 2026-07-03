#TRIGGER FOR A SINGLE COMMAND

#scoreboard players enable @a TRIGGER
#execute as @a[scores={TRIGGER=1..}] run function ...
#scoreboard players set @a[scores={TRIGGER=1..}] TRIGGER 0

scoreboard players enable @a vote_select
execute as @a[scores={vote_select=1..},tag=!dead] if score @s alreadyVoted matches 0 if score @s vote_select = @s playersID run tellraw @s {"color":"dark_red","text":"You can't vote for yourself!"}
execute as @a[scores={vote_select=1..},tag=!dead] unless score @s alreadyVoted matches 0 run tellraw @s {"color":"dark_red","text":"You already voted!"}
execute as @a[scores={vote_select=1..},tag=!dead] if score @s alreadyVoted matches 0 unless score @s vote_select = @s playersID run function gnosia:voting/voteselect/select
scoreboard players set @a[scores={vote_select=1..}] vote_select 0

### ENGINEER SELECT

scoreboard players enable @a eng_select
execute if score warpdriveTimer timers matches 1.. as @a[scores={eng_select=1..},tag=engineer,tag=!dead] run scoreboard players operation engSearch gnosiaKillChoose = @s eng_select
execute if score warpdriveTimer timers matches 1.. as @a[scores={eng_select=1..,engineerID=1..},tag=!engineer,tag=!dead] run function gnosia:role-actions/fake_engineer_choose
scoreboard players set @a[scores={eng_select=1..}] eng_select 0

### GNOSIA SELECT

scoreboard players enable @a gnos_select
execute if score warpdriveTimer timers matches 1.. as @a[scores={gnos_select=1..},tag=gnosia,tag=!dead] run scoreboard players operation gnosiaKillChoose gnosiaKillChoose = @s gnos_select
scoreboard players set @a[scores={gnos_select=1..}] gnos_select 0

### ANGEL SELECT

scoreboard players enable @a ang_select
execute if score warpdriveTimer timers matches 1.. as @a[scores={ang_select=1..},tag=angel,tag=!dead] run scoreboard players operation angelSave gnosiaKillChoose = @s ang_select
scoreboard players set @a[scores={ang_select=1..}] ang_select 0

# Fake Doctor Select
scoreboard players enable @a doc_fake_human
scoreboard players enable @a doc_fake_gnosia

execute if score warpdriveTimer timers matches 1.. as @a[scores={doc_fake_gnosia=1..,doctorID=1..}] run function gnosia:role-actions/fake_doctor_choose
scoreboard players set @a[scores={doc_fake_gnosia=1..}] doc_fake_gnosia 0
scoreboard players set @a[scores={doc_fake_gnosia=1..}] doc_fake_human 0

execute if score warpdriveTimer timers matches 1.. as @a[scores={doc_fake_human=1..,doctorID=1..}] run function gnosia:role-actions/fake_doctor_choose
scoreboard players set @a[scores={doc_fake_human=1..}] doc_fake_human 0


scoreboard players enable @a both_cryo
execute as @a[tag=!cryoVote,scores={both_cryo=1..}] run function gnosia:voting/castvote-both-cryo
scoreboard players set @a[scores={both_cryo=1..}] both_cryo 0

scoreboard players enable @a no_cryo
execute as @a[tag=!cryoVote,scores={no_cryo=1..}] run function gnosia:voting/castvote-no-cryo
scoreboard players set @a[scores={no_cryo=1..}] no_cryo 0


scoreboard players enable @a role
execute as @a[scores={role=1..}] run function gnosia:role-tell
scoreboard players set @a[scores={role=1..}] role 0

scoreboard players enable @a fakeCheckResult
execute if score warpdriveTimer timers matches 1.. as @a[scores={fakeCheckResult=1..,engineerID=1..},tag=!engineer,tag=!dead] run function gnosia:role-actions/fake_engineer_role
scoreboard players set @a[scores={fakeCheckResult=1..}] fakeCheckResult 0


scoreboard players enable @a engineerReportHuman
scoreboard players enable @a engineerReportGnosia

execute if score discussionTimer timers matches 1.. as @a[scores={engineerReportGnosia=1..,engineerID=1..}] run function gnosia:log/reports/group/retroactive_engineer
scoreboard players set @a[scores={engineerReportGnosia=1..}] engineerReportGnosia 0
scoreboard players set @a[scores={engineerReportGnosia=1..}] engineerReportHuman 0

execute if score discussionTimer timers matches 1.. as @a[scores={engineerReportHuman=1..,engineerID=1..}] run function gnosia:log/reports/group/retroactive_engineer
scoreboard players set @a[scores={engineerReportHuman=1..}] engineerReportHuman 0


scoreboard players enable @a doctorReportHuman
scoreboard players enable @a doctorReportGnosia

execute if score discussionTimer timers matches 1.. as @a[scores={doctorReportGnosia=1..,doctorID=1..}] run function gnosia:log/reports/group/retroactive_doctor
scoreboard players set @a[scores={doctorReportGnosia=1..}] doctorReportGnosia 0
scoreboard players set @a[scores={doctorReportGnosia=1..}] doctorReportHuman 0

execute if score discussionTimer timers matches 1.. as @a[scores={doctorReportHuman=1..,doctorID=1..}] run function gnosia:log/reports/group/retroactive_doctor
scoreboard players set @a[scores={doctorReportHuman=1..}] doctorReportHuman 0


scoreboard players enable @a noReport

scoreboard players enable @a claim_engineer
execute if score discussionTimer timers matches 1.. as @a[scores={claim_engineer=1..},tag=!dead] if score engineer claimStatus matches ..1 unless entity @s[tag=!gnosia,tag=!acfollower,tag=!bug,tag=!engineer] run function gnosia:role-claim-engineer
scoreboard players set @a[scores={claim_engineer=1..}] claim_engineer 0

scoreboard players enable @a claim_doctor
execute if score discussionTimer timers matches 1.. as @a[scores={claim_doctor=1..},tag=!dead] if score doctor claimStatus matches ..1 unless entity @s[tag=!gnosia,tag=!acfollower,tag=!bug,tag=!doctor] run function gnosia:role-claim-doctor
scoreboard players set @a[scores={claim_doctor=1..}] claim_doctor 0

scoreboard players enable @a claim_guard
execute if score discussionTimer timers matches 1.. as @a[scores={claim_guard=1..},tag=guard,tag=!dead] if score guardDuty claimStatus matches ..1 run function gnosia:role-claim-guard
scoreboard players set @a[scores={claim_guard=1..}] claim_guard 0

scoreboard players enable @a makeReport
execute if score discussionTimer timers matches 1.. as @a[tag=!dead,tag=!reportMade,scores={engineerID=1..,makeReport=1..}] run function gnosia:log/reports/make_engineer
execute if score discussionTimer timers matches 1.. as @a[tag=!dead,tag=!reportMade,scores={doctorID=1..,makeReport=1..}] run function gnosia:log/reports/make_doctor
scoreboard players set @a[scores={makeReport=1..}] makeReport 0