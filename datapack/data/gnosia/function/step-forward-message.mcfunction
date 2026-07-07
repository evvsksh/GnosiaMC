execute if score canLie claimStatus matches 1 run tellraw @a[tag=gnosia,tag=!dead,tag=!cantClaim] [{"bold":true,"color":"#e60039","text":"Fake your role:"}]
execute if score canLie claimStatus matches 1 run tellraw @a[tag=acfollower,tag=!dead,tag=!cantClaim] [{"bold":true,"color":"#c60080","text":"Fake your role:"}]
execute if score canLie claimStatus matches 1 run tellraw @a[tag=bug,tag=!dead,tag=!cantClaim] [{"bold":true,"color":"#253636","text":"Fake your role:"}]
execute if score engineer claimStatus matches ..1 run tellraw @a[tag=engineer,tag=!dead,tag=!cantClaim] [{"bold":true,"color":"#187fc4","text":"Claim your role:"}]
execute if score doctor claimStatus matches ..1 run tellraw @a[tag=doctor,tag=!dead,tag=!cantClaim] [{"bold":true,"color":"#8376b5","text":"Claim your role:"}]
execute if score guardDuty claimStatus matches ..1 run tellraw @a[tag=guard,tag=!dead,tag=!cantClaim] [{"bold":true,"color":"#46b035","text":"Claim your role:"}]

execute if score engineer claimStatus matches ..1 run tellraw @a[tag=gnosia,tag=!dead,tag=!cantClaim] [{underlined:true,"color":"#187fc4","text":"Engineer","click_event":{"action":"run_command","command":"/trigger claim_engineer"}}]
execute if score engineer claimStatus matches ..1 run tellraw @a[tag=acfollower,tag=!dead,tag=!cantClaim] [{underlined:true,"color":"#187fc4","text":"Engineer","click_event":{"action":"run_command","command":"/trigger claim_engineer"}}]
execute if score engineer claimStatus matches ..1 run tellraw @a[tag=bug,tag=!dead,tag=!cantClaim] [{underlined:true,"color":"#187fc4","text":"Engineer","click_event":{"action":"run_command","command":"/trigger claim_engineer"}}]
execute if score engineer claimStatus matches ..1 run tellraw @a[tag=engineer,tag=!dead,tag=!cantClaim] [{underlined:true,"color":"#187fc4","text":"Engineer","click_event":{"action":"run_command","command":"/trigger claim_engineer"}}]

execute if score doctor claimStatus matches ..1 run tellraw @a[tag=gnosia,tag=!dead,tag=!cantClaim] [{underlined:true,"color":"#8376b5","text":"Doctor","click_event":{"action":"run_command","command":"/trigger claim_doctor"}}]
execute if score doctor claimStatus matches ..1 run tellraw @a[tag=acfollower,tag=!dead,tag=!cantClaim] [{underlined:true,"color":"#8376b5","text":"Doctor","click_event":{"action":"run_command","command":"/trigger claim_doctor"}}]
execute if score doctor claimStatus matches ..1 run tellraw @a[tag=bug,tag=!dead,tag=!cantClaim] [{underlined:true,"color":"#8376b5","text":"Doctor","click_event":{"action":"run_command","command":"/trigger claim_doctor"}}]
execute if score doctor claimStatus matches ..1 run tellraw @a[tag=doctor,tag=!dead,tag=!cantClaim] [{underlined:true,"color":"#8376b5","text":"Doctor","click_event":{"action":"run_command","command":"/trigger claim_doctor"}}]

execute if score guardDuty claimStatus matches ..1 run tellraw @a[tag=guard,tag=!dead,tag=!cantClaim] [{underlined:true,"color":"#46b035","text":"Guard Duty","click_event":{"action":"run_command","command":"/trigger claim_guard"}}]

execute if score engineer claimStatus matches 2 run tellraw @a[tag=engineer,tag=!dead,tag=!cantClaim] [{"bold":true,"color":"#187fc4","text":"Revenge of Time Clam","obfuscated":true}]
execute if score doctor claimStatus matches 2 run tellraw @a[tag=doctor,tag=!dead,tag=!cantClaim] [{"bold":true,"color":"#8376b5","text":"Revenge of Time Clam","obfuscated":true}]