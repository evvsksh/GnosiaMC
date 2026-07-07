scoreboard players set winRole logState 3
function gnosia:log/status/generate_results
#title @a title {"color":"gray","text":"Bug win! (test)"}
team join bug @a[tag=bug,team=crew]
team join bug_engineer @a[tag=bug,team=engineer_claim]
team join bug_doctor @a[tag=bug,team=doctor_claim]
effect give @a[tag=bug] resistance 15 100 true
effect give @a[tag=bug] glowing 10 1 true
effect give @a[tag=bug] speed 10 1 true
playsound gnosia:ost.we-all-broken player @a ~ ~ ~ 1 1 1
schedule function gnosia:phase/end-screen 10s