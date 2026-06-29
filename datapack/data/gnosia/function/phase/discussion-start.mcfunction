tellraw @a [{"color":"aqua","text":"Discussion will start in 1 minute!"}]
schedule clear gnosia:music/discussion-music
schedule clear gnosia:music/voting-music
schedule clear gnosia:music/free-time-music
playsound gnosia:leviactivate player @a ~ ~ ~ 1 1 1
schedule function gnosia:phase/discussion-timer 60s
tag @a remove spawned
