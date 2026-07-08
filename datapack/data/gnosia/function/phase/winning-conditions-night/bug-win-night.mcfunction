scoreboard players set winRole logState 3
function gnosia:log/status/generate_results
#title @a title {"color":"gray","text":"Bug win! (night test)"}
scoreboard players set win winning-conditions 1
team join bug @a[tag=bug,team=crew]
team join bug_engineer @a[tag=bug,team=engineer_claim]
team join bug_doctor @a[tag=bug,team=doctor_claim]
effect give @a[tag=bug] glowing 10 1 true
effect give @a[tag=bug] speed 10 1 true
effect give @a[tag=bug] resistance infinite 255 true
playsound gnosia:ost.we-all-broken record @a ~ ~ ~ 1 1 1
schedule function gnosia:phase/end-screen 10s
