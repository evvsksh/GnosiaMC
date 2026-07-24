#title @a title {"color":"gray","text":"Bug win! (test)"}
function gnosia:voting/led-animation/led-off
schedule function gnosia:voting/led-animation/led-on-red 3s
schedule function gnosia:voting/led-animation/led-off 6s
schedule function gnosia:phase/bug-win-final 10s
item replace entity @a[tag=gnosia] hotbar.4 with netherite_sword[enchantments={"unbreaking":3}] 1
scoreboard players set winningCondition gameStatus 2
