#say The game continues
schedule clear gnosia:music/discussion-music
schedule clear gnosia:music/voting-music
schedule clear gnosia:music/free-time-music

function gnosia:voting/led-animation/led-off
schedule function gnosia:voting/led-animation/led-on-red 3s
#schedule function gnosia:music/free-time-music 10s
schedule function gnosia:phase/warp-drive 20s