#TRIGGER FOR A SINGLE COMMAND

#scoreboard players enable @a TRIGGER
#execute as @a[scores={TRIGGER=1..}] run function ...
#scoreboard players set @a[scores={TRIGGER=1..}] TRIGGER 0

scoreboard players enable @a vote_select
execute as @a[scores={vote_select=1..},tag=!dead] if score @s alreadyVoted matches 0 unless score @s vote_select = @s playersID run function gnosia:voting/voteselect/select
execute as @a[scores={vote_select=1..},tag=!dead] if score @s alreadyVoted matches 0 if score @s vote_select = @s playersID run tellraw @s {"color":"dark_red","text":"You can't vote for yourself!"}
execute as @a[scores={vote_select=1..},tag=!dead] unless score @s alreadyVoted matches 0 run tellraw @s {"color":"dark_red","text":"You already voted!"}
scoreboard players set @a[scores={vote_select=1..}] vote_select 0

### ENGINEER SELECT

scoreboard players enable @a eng_select
execute as @a[scores={eng_select=1..},tag=engineer,tag=!dead] run scoreboard players operation engSearch gnosiaKillChoose = @s eng_select
scoreboard players set @a[scores={eng_select=1..}] eng_select 0

### GNOSIA SELECT

scoreboard players enable @a gnos_select
execute as @a[scores={gnos_select=1..},tag=gnosia,tag=!dead] run scoreboard players operation gnosiaKillChoose gnosiaKillChoose = @s gnos_select
scoreboard players set @a[scores={gnos_select=1..}] gnos_select 0

### ANGEL SELECT

scoreboard players enable @a ang_select
execute as @a[scores={ang_select=1..},tag=angel,tag=!dead] run scoreboard players operation angelSave gnosiaKillChoose = @s ang_select
scoreboard players set @a[scores={ang_select=1..}] ang_select 0



scoreboard players enable @a both_cryo
execute as @a[scores={both_cryo=1..}] run function gnosia:voting/castvote-both-cryo
scoreboard players set @a[scores={both_cryo=1..}] both_cryo 0

scoreboard players enable @a no_cryo
execute as @a[scores={no_cryo=1..}] run function gnosia:voting/castvote-no-cryo
scoreboard players set @a[scores={no_cryo=1..}] no_cryo 0


scoreboard players enable @a role
execute as @a[scores={role=1..}] run function gnosia:role-tell
scoreboard players set @a[scores={role=1..}] role 0

scoreboard players enable @a claim_engineer
execute as @a[scores={claim_engineer=1..},tag=!dead] if score engineer claimStatus matches ..1 unless entity @s[tag=!gnosia,tag=!acfollower,tag=!bug,tag=!engineer] run function gnosia:role-claim-engineer
scoreboard players set @a[scores={claim_engineer=1..}] claim_engineer 0

scoreboard players enable @a claim_doctor
execute as @a[scores={claim_doctor=1..},tag=!dead] if score doctor claimStatus matches ..1 unless entity @s[tag=!gnosia,tag=!acfollower,tag=!bug,tag=!doctor] run function gnosia:role-claim-doctor
scoreboard players set @a[scores={claim_doctor=1..}] claim_doctor 0

scoreboard players enable @a claim_guard
execute as @a[scores={claim_guard=1..},tag=guard,tag=!dead] if score guardDuty claimStatus matches ..1 run function gnosia:role-claim-guard
scoreboard players set @a[scores={claim_guard=1..}] claim_guard 0