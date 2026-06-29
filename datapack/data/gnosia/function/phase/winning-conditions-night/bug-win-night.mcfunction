#title @a title {"color":"gray","text":"Bug win! (night test)"}
scoreboard players set win winning-conditions 1
team join bug @a[tag=bug]
effect give @a[tag=bug] glowing 10 1 true
effect give @a[tag=bug] speed 10 1 true
playsound gnosia:ost.we-all-broken record @a ~ ~ ~ 1 1 1
schedule function gnosia:phase/end-screen 10s
