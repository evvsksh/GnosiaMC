#title @a title {"color":"red","text":"Gnosia win! (test)"}
scoreboard players set win winning-conditions 1
function gnosia:voting/led-animation/led-off
function gnosia:pvp/enable
schedule function gnosia:voting/led-animation/led-on-red 3s
schedule function gnosia:phase/gnosia-win-final 10s
schedule function gnosia:phase/gnosia-win-music 5s
scoreboard players set winningCondition gameStatus 1
