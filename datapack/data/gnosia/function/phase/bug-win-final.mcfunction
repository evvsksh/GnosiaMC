#title @a title {"color":"gray","text":"Bug win! (test)"}
team join bug @a[tag=bug]
effect give @a[tag=bug] resistance 15 100 true
effect give @a[tag=bug] glowing 10 1 true
effect give @a[tag=bug] speed 10 1 true
playsound gnosia:ost.we-all-broken player @a ~ ~ ~ 1 1 1
scoreboard players set winRole logState 3
function gnosia:log/status/generate_results
schedule function gnosia:phase/end-screen 10s