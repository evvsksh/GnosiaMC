#title @a title {"color":"green","text":"Humans win! (test)"}
function gnosia:voting/led-animation/led-off
schedule function gnosia:voting/led-animation/led-on-green 3s
schedule function gnosia:phase/human-win-final 5s
schedule function gnosia:phase/end-screen 10s
