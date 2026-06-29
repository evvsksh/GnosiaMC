#TRIGGER FOR A SINGLE COMMAND

#scoreboard players enable @a TRIGGER
#execute as @a[scores={TRIGGER=1..}] run function ...
#scoreboard players set @a[scores={TRIGGER=1..}] TRIGGER 0
scoreboard players enable @a select_c1
execute as @a[scores={select_c1=1..}] run function gnosia:voting/voteselect/select_c1
scoreboard players set @a[scores={select_c1=1..}] select_c1 0
 
scoreboard players enable @a select_c2
execute as @a[scores={select_c2=1..}] run function gnosia:voting/voteselect/select_c2
scoreboard players set @a[scores={select_c2=1..}] select_c2 0
 
scoreboard players enable @a select_c3
execute as @a[scores={select_c3=1..}] run function gnosia:voting/voteselect/select_c3
scoreboard players set @a[scores={select_c3=1..}] select_c3 0

scoreboard players enable @a select_c4
execute as @a[scores={select_c4=1..}] run function gnosia:voting/voteselect/select_c4
scoreboard players set @a[scores={select_c4=1..}] select_c4 0

scoreboard players enable @a select_c5
execute as @a[scores={select_c5=1..}] run function gnosia:voting/voteselect/select_c5
scoreboard players set @a[scores={select_c5=1..}] select_c5 0

scoreboard players enable @a select_c6
execute as @a[scores={select_c6=1..}] run function gnosia:voting/voteselect/select_c6
scoreboard players set @a[scores={select_c6=1..}] select_c6 0

scoreboard players enable @a select_c7
execute as @a[scores={select_c7=1..}] run function gnosia:voting/voteselect/select_c7
scoreboard players set @a[scores={select_c7=1..}] select_c7 0

scoreboard players enable @a select_c8
execute as @a[scores={select_c8=1..}] run function gnosia:voting/voteselect/select_c8
scoreboard players set @a[scores={select_c8=1..}] select_c8 0

scoreboard players enable @a select_c9
execute as @a[scores={select_c9=1..}] run function gnosia:voting/voteselect/select_c9
scoreboard players set @a[scores={select_c9=1..}] select_c9 0

scoreboard players enable @a select_c10
execute as @a[scores={select_c10=1..}] run function gnosia:voting/voteselect/select_c10
scoreboard players set @a[scores={select_c10=1..}] select_c10 0

scoreboard players enable @a select_c11
execute as @a[scores={select_c11=1..}] run function gnosia:voting/voteselect/select_c11
scoreboard players set @a[scores={select_c11=1..}] select_c11 0

scoreboard players enable @a select_c12
execute as @a[scores={select_c12=1..}] run function gnosia:voting/voteselect/select_c12
scoreboard players set @a[scores={select_c12=1..}] select_c12 0

scoreboard players enable @a select_c13
execute as @a[scores={select_c13=1..}] run function gnosia:voting/voteselect/select_c13
scoreboard players set @a[scores={select_c13=1..}] select_c13 0

scoreboard players enable @a select_c14
execute as @a[scores={select_c14=1..}] run function gnosia:voting/voteselect/select_c14
scoreboard players set @a[scores={select_c14=1..}] select_c14 0

scoreboard players enable @a select_c15
execute as @a[scores={select_c15=1..}] run function gnosia:voting/voteselect/select_c15
scoreboard players set @a[scores={select_c15=1..}] select_c15 0

### ENGINEER SELECT

scoreboard players enable @a eng_select_c1
execute as @a[scores={eng_select_c1=1..}] run execute as @s[tag=!dead] run scoreboard players set engSearch gnosiaKillChoose 1
scoreboard players set @a[scores={eng_select_c1=1..}] eng_select_c1 0
 
scoreboard players enable @a eng_select_c2
execute as @a[scores={eng_select_c2=1..}] run execute as @s[tag=!dead] run scoreboard players set engSearch gnosiaKillChoose 2
scoreboard players set @a[scores={eng_select_c2=1..}] eng_select_c2 0
 
scoreboard players enable @a eng_select_c3
execute as @a[scores={eng_select_c3=1..}] run execute as @s[tag=!dead] run scoreboard players set engSearch gnosiaKillChoose 3
scoreboard players set @a[scores={eng_select_c3=1..}] eng_select_c3 0

scoreboard players enable @a eng_select_c4
execute as @a[scores={eng_select_c4=1..}] run execute as @s[tag=!dead] run scoreboard players set engSearch gnosiaKillChoose 4
scoreboard players set @a[scores={eng_select_c4=1..}] eng_select_c4 0

scoreboard players enable @a eng_select_c5
execute as @a[scores={eng_select_c5=1..}] run execute as @s[tag=!dead] run scoreboard players set engSearch gnosiaKillChoose 5
scoreboard players set @a[scores={eng_select_c5=1..}] eng_select_c5 0

scoreboard players enable @a eng_select_c6
execute as @a[scores={eng_select_c6=1..}] run execute as @s[tag=!dead] run scoreboard players set engSearch gnosiaKillChoose 6
scoreboard players set @a[scores={eng_select_c6=1..}] eng_select_c6 0

scoreboard players enable @a eng_select_c7
execute as @a[scores={eng_select_c7=1..}] run execute as @s[tag=!dead] run scoreboard players set engSearch gnosiaKillChoose 7
scoreboard players set @a[scores={eng_select_c7=1..}] eng_select_c7 0

scoreboard players enable @a eng_select_c8
execute as @a[scores={eng_select_c8=1..}] run execute as @s[tag=!dead] run scoreboard players set engSearch gnosiaKillChoose 8
scoreboard players set @a[scores={eng_select_c8=1..}] eng_select_c8 0

scoreboard players enable @a eng_select_c9
execute as @a[scores={eng_select_c9=1..}] run execute as @s[tag=!dead] run scoreboard players set engSearch gnosiaKillChoose 9
scoreboard players set @a[scores={eng_select_c9=1..}] eng_select_c9 0

scoreboard players enable @a eng_select_c10
execute as @a[scores={eng_select_c10=1..}] run execute as @s[tag=!dead] run scoreboard players set engSearch gnosiaKillChoose 10
scoreboard players set @a[scores={eng_select_c10=1..}] eng_select_c10 0

scoreboard players enable @a eng_select_c11
execute as @a[scores={eng_select_c11=1..}] run execute as @s[tag=!dead] run scoreboard players set engSearch gnosiaKillChoose 11
scoreboard players set @a[scores={eng_select_c11=1..}] eng_select_c11 0

scoreboard players enable @a eng_select_c12
execute as @a[scores={eng_select_c12=1..}] run execute as @s[tag=!dead] run scoreboard players set engSearch gnosiaKillChoose 12
scoreboard players set @a[scores={eng_select_c12=1..}] eng_select_c12 0

scoreboard players enable @a eng_select_c13
execute as @a[scores={eng_select_c13=1..}] run execute as @s[tag=!dead] run scoreboard players set engSearch gnosiaKillChoose 13
scoreboard players set @a[scores={eng_select_c13=1..}] eng_select_c13 0

scoreboard players enable @a eng_select_c14
execute as @a[scores={eng_select_c14=1..}] run execute as @s[tag=!dead] run scoreboard players set engSearch gnosiaKillChoose 14
scoreboard players set @a[scores={eng_select_c14=1..}] eng_select_c14 0

scoreboard players enable @a eng_select_c15
execute as @a[scores={eng_select_c15=1..}] run execute as @s[tag=!dead] run scoreboard players set engSearch gnosiaKillChoose 15
scoreboard players set @a[scores={eng_select_c15=1..}] eng_select_c15 0

### GNOSIA SELECT

scoreboard players enable @a gnos_select_c1
execute as @a[scores={gnos_select_c1=1..}] run execute as @s[tag=!dead] run scoreboard players set gnosiaKillChoose gnosiaKillChoose 1
scoreboard players set @a[scores={gnos_select_c1=1..}] gnos_select_c1 0
 
scoreboard players enable @a gnos_select_c2
execute as @a[scores={gnos_select_c2=1..}] run execute as @s[tag=!dead] run scoreboard players set gnosiaKillChoose gnosiaKillChoose 2
scoreboard players set @a[scores={gnos_select_c2=1..}] gnos_select_c2 0
 
scoreboard players enable @a gnos_select_c3
execute as @a[scores={gnos_select_c3=1..}] run execute as @s[tag=!dead] run scoreboard players set gnosiaKillChoose gnosiaKillChoose 3
scoreboard players set @a[scores={gnos_select_c3=1..}] gnos_select_c3 0

scoreboard players enable @a gnos_select_c4
execute as @a[scores={gnos_select_c4=1..}] run execute as @s[tag=!dead] run scoreboard players set gnosiaKillChoose gnosiaKillChoose 4
scoreboard players set @a[scores={gnos_select_c4=1..}] gnos_select_c4 0

scoreboard players enable @a gnos_select_c5
execute as @a[scores={gnos_select_c5=1..}] run execute as @s[tag=!dead] run scoreboard players set gnosiaKillChoose gnosiaKillChoose 5
scoreboard players set @a[scores={gnos_select_c5=1..}] gnos_select_c5 0

scoreboard players enable @a gnos_select_c6
execute as @a[scores={gnos_select_c6=1..}] run execute as @s[tag=!dead] run scoreboard players set gnosiaKillChoose gnosiaKillChoose 6
scoreboard players set @a[scores={gnos_select_c6=1..}] gnos_select_c6 0

scoreboard players enable @a gnos_select_c7
execute as @a[scores={gnos_select_c7=1..}] run execute as @s[tag=!dead] run scoreboard players set gnosiaKillChoose gnosiaKillChoose 7
scoreboard players set @a[scores={gnos_select_c7=1..}] gnos_select_c7 0

scoreboard players enable @a gnos_select_c8
execute as @a[scores={gnos_select_c8=1..}] run execute as @s[tag=!dead] run scoreboard players set gnosiaKillChoose gnosiaKillChoose 8
scoreboard players set @a[scores={gnos_select_c8=1..}] gnos_select_c8 0

scoreboard players enable @a gnos_select_c9
execute as @a[scores={gnos_select_c9=1..}] run execute as @s[tag=!dead] run scoreboard players set gnosiaKillChoose gnosiaKillChoose 9
scoreboard players set @a[scores={gnos_select_c9=1..}] gnos_select_c9 0

scoreboard players enable @a gnos_select_c10
execute as @a[scores={gnos_select_c10=1..}] run execute as @s[tag=!dead] run scoreboard players set gnosiaKillChoose gnosiaKillChoose 10
scoreboard players set @a[scores={gnos_select_c10=1..}] gnos_select_c10 0

scoreboard players enable @a gnos_select_c11
execute as @a[scores={gnos_select_c11=1..}] run execute as @s[tag=!dead] run scoreboard players set gnosiaKillChoose gnosiaKillChoose 11
scoreboard players set @a[scores={gnos_select_c11=1..}] gnos_select_c11 0

scoreboard players enable @a gnos_select_c12
execute as @a[scores={gnos_select_c12=1..}] run execute as @s[tag=!dead] run scoreboard players set gnosiaKillChoose gnosiaKillChoose 12
scoreboard players set @a[scores={gnos_select_c12=1..}] gnos_select_c12 0

scoreboard players enable @a gnos_select_c13
execute as @a[scores={gnos_select_c13=1..}] run execute as @s[tag=!dead] run scoreboard players set gnosiaKillChoose gnosiaKillChoose 13
scoreboard players set @a[scores={gnos_select_c13=1..}] gnos_select_c13 0

scoreboard players enable @a gnos_select_c14
execute as @a[scores={gnos_select_c14=1..}] run execute as @s[tag=!dead] run scoreboard players set gnosiaKillChoose gnosiaKillChoose 14
scoreboard players set @a[scores={gnos_select_c14=1..}] gnos_select_c14 0

scoreboard players enable @a gnos_select_c15
execute as @a[scores={gnos_select_c15=1..}] run execute as @s[tag=!dead] run scoreboard players set gnosiaKillChoose gnosiaKillChoose 15

### ANGEL SELECT

scoreboard players enable @a ang_select_c1
execute as @a[scores={ang_select_c1=1..}] run execute as @s[tag=!dead] run scoreboard players set angelSave gnosiaKillChoose 1
scoreboard players set @a[scores={ang_select_c1=1..}] ang_select_c1 0
 
scoreboard players enable @a ang_select_c2
execute as @a[scores={ang_select_c2=1..}] run execute as @s[tag=!dead] run scoreboard players set angelSave gnosiaKillChoose 2
scoreboard players set @a[scores={ang_select_c2=1..}] ang_select_c2 0
 
scoreboard players enable @a ang_select_c3
execute as @a[scores={ang_select_c3=1..}] run execute as @s[tag=!dead] run scoreboard players set angelSave gnosiaKillChoose 3
scoreboard players set @a[scores={ang_select_c3=1..}] ang_select_c3 0

scoreboard players enable @a ang_select_c4
execute as @a[scores={ang_select_c4=1..}] run execute as @s[tag=!dead] run scoreboard players set angelSave gnosiaKillChoose 4
scoreboard players set @a[scores={ang_select_c4=1..}] ang_select_c4 0

scoreboard players enable @a ang_select_c5
execute as @a[scores={ang_select_c5=1..}] run execute as @s[tag=!dead] run scoreboard players set angelSave gnosiaKillChoose 5
scoreboard players set @a[scores={ang_select_c5=1..}] ang_select_c5 0

scoreboard players enable @a ang_select_c6
execute as @a[scores={ang_select_c6=1..}] run execute as @s[tag=!dead] run scoreboard players set angelSave gnosiaKillChoose 6
scoreboard players set @a[scores={ang_select_c6=1..}] ang_select_c6 0

scoreboard players enable @a ang_select_c7
execute as @a[scores={ang_select_c7=1..}] run execute as @s[tag=!dead] run scoreboard players set angelSave gnosiaKillChoose 7
scoreboard players set @a[scores={ang_select_c7=1..}] ang_select_c7 0

scoreboard players enable @a ang_select_c8
execute as @a[scores={ang_select_c8=1..}] run execute as @s[tag=!dead] run scoreboard players set angelSave gnosiaKillChoose 8
scoreboard players set @a[scores={ang_select_c8=1..}] ang_select_c8 0

scoreboard players enable @a ang_select_c9
execute as @a[scores={ang_select_c9=1..}] run execute as @s[tag=!dead] run scoreboard players set angelSave gnosiaKillChoose 9
scoreboard players set @a[scores={ang_select_c9=1..}] ang_select_c9 0

scoreboard players enable @a ang_select_c10
execute as @a[scores={ang_select_c10=1..}] run execute as @s[tag=!dead] run scoreboard players set angelSave gnosiaKillChoose 10
scoreboard players set @a[scores={ang_select_c10=1..}] ang_select_c10 0

scoreboard players enable @a ang_select_c11
execute as @a[scores={ang_select_c11=1..}] run execute as @s[tag=!dead] run scoreboard players set angelSave gnosiaKillChoose 11
scoreboard players set @a[scores={ang_select_c11=1..}] ang_select_c11 0

scoreboard players enable @a ang_select_c12
execute as @a[scores={ang_select_c12=1..}] run execute as @s[tag=!dead] run scoreboard players set angelSave gnosiaKillChoose 12
scoreboard players set @a[scores={ang_select_c12=1..}] ang_select_c12 0

scoreboard players enable @a ang_select_c13
execute as @a[scores={ang_select_c13=1..}] run execute as @s[tag=!dead] run scoreboard players set angelSave gnosiaKillChoose 13
scoreboard players set @a[scores={ang_select_c13=1..}] ang_select_c13 0

scoreboard players enable @a ang_select_c14
execute as @a[scores={ang_select_c14=1..}] run execute as @s[tag=!dead] run scoreboard players set angelSave gnosiaKillChoose 14
scoreboard players set @a[scores={ang_select_c14=1..}] ang_select_c14 0

scoreboard players enable @a ang_select_c15
execute as @a[scores={ang_select_c15=1..}] run execute as @s[tag=!dead] run scoreboard players set angelSave gnosiaKillChoose 15
scoreboard players set @a[scores={ang_select_c15=1..}] eng_select_c15 0



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