execute as @a[tag=cryoVote] run execute at @s run setblock ~ ~ ~-3 minecraft:dark_oak_shelf

execute as @a[tag=cryoVote,tag=c1] run execute at @s run summon text_display ~ ~.5 ~-2.51 {Rotation:[180F,0F],Tags:["cryoroomName"],text:[{"color":"aqua","text":"❄ "},{"selector":"@a[tag=c1,tag=cryoVote]"}]}
execute as @a[tag=cryoVote,tag=c2] run execute at @s run summon text_display ~ ~.5 ~-2.51 {Rotation:[180F,0F],Tags:["cryoroomName"],text:[{"color":"aqua","text":"❄ "},{"selector":"@a[tag=c2,tag=cryoVote]"}]}
execute as @a[tag=cryoVote,tag=c3] run execute at @s run summon text_display ~ ~.5 ~-2.51 {Rotation:[180F,0F],Tags:["cryoroomName"],text:[{"color":"aqua","text":"❄ "},{"selector":"@a[tag=c3,tag=cryoVote]"}]}
execute as @a[tag=cryoVote,tag=c4] run execute at @s run summon text_display ~ ~.5 ~-2.51 {Rotation:[180F,0F],Tags:["cryoroomName"],text:[{"color":"aqua","text":"❄ "},{"selector":"@a[tag=c4,tag=cryoVote]"}]}
execute as @a[tag=cryoVote,tag=c5] run execute at @s run summon text_display ~ ~.5 ~-2.51 {Rotation:[180F,0F],Tags:["cryoroomName"],text:[{"color":"aqua","text":"❄ "},{"selector":"@a[tag=c5,tag=cryoVote]"}]}
execute as @a[tag=cryoVote,tag=c6] run execute at @s run summon text_display ~ ~.5 ~-2.51 {Rotation:[180F,0F],Tags:["cryoroomName"],text:[{"color":"aqua","text":"❄ "},{"selector":"@a[tag=c6,tag=cryoVote]"}]}
execute as @a[tag=cryoVote,tag=c7] run execute at @s run summon text_display ~ ~.5 ~-2.51 {Rotation:[180F,0F],Tags:["cryoroomName"],text:[{"color":"aqua","text":"❄ "},{"selector":"@a[tag=c7,tag=cryoVote]"}]}
execute as @a[tag=cryoVote,tag=c8] run execute at @s run summon text_display ~ ~.5 ~-2.51 {Rotation:[180F,0F],Tags:["cryoroomName"],text:[{"color":"aqua","text":"❄ "},{"selector":"@a[tag=c8,tag=cryoVote]"}]}
execute as @a[tag=cryoVote,tag=c9] run execute at @s run summon text_display ~ ~.5 ~-2.51 {Rotation:[180F,0F],Tags:["cryoroomName"],text:[{"color":"aqua","text":"❄ "},{"selector":"@a[tag=c9,tag=cryoVote]"}]}
execute as @a[tag=cryoVote,tag=c10] run execute at @s run summon text_display ~ ~.5 ~-2.51 {Rotation:[180F,0F],Tags:["cryoroomName"],text:[{"color":"aqua","text":"❄ "},{"selector":"@a[tag=c10,tag=cryoVote]"}]}
execute as @a[tag=cryoVote,tag=c11] run execute at @s run summon text_display ~ ~.5 ~-2.51 {Rotation:[180F,0F],Tags:["cryoroomName"],text:[{"color":"aqua","text":"❄ "},{"selector":"@a[tag=c11,tag=cryoVote]"}]}
execute as @a[tag=cryoVote,tag=c12] run execute at @s run summon text_display ~ ~.5 ~-2.51 {Rotation:[180F,0F],Tags:["cryoroomName"],text:[{"color":"aqua","text":"❄ "},{"selector":"@a[tag=c12,tag=cryoVote]"}]}
execute as @a[tag=cryoVote,tag=c13] run execute at @s run summon text_display ~ ~.5 ~-2.51 {Rotation:[180F,0F],Tags:["cryoroomName"],text:[{"color":"aqua","text":"❄ "},{"selector":"@a[tag=c13,tag=cryoVote]"}]}
execute as @a[tag=cryoVote,tag=c14] run execute at @s run summon text_display ~ ~.5 ~-2.51 {Rotation:[180F,0F],Tags:["cryoroomName"],text:[{"color":"aqua","text":"❄ "},{"selector":"@a[tag=c14,tag=cryoVote]"}]}
execute as @a[tag=cryoVote,tag=c15] run execute at @s run summon text_display ~ ~.5 ~-2.51 {Rotation:[180F,0F],Tags:["cryoroomName"],text:[{"color":"aqua","text":"❄ "},{"selector":"@a[tag=c15,tag=cryoVote]"}]}

execute as @a[tag=cryoVote] run function gnosia:log/event/frozen

gamemode spectator @a[tag=cryoVote]
tag @a[tag=cryoVote] add cryoSleep
tag @a[tag=cryoVote] add docSearch
tag @a[tag=cryoVote] add dead

stopsound @a record

schedule clear gnosia:music/discussion-music
schedule clear gnosia:music/voting-music
schedule clear gnosia:music/free-time-music

#execute as @a[tag=!gnosia,tag=cryoVote] run schedule function gnosia:phase/cryo-result 7s
execute as @e[tag=cryoVote] run schedule function gnosia:phase/cryo-result 7s
#execute as @a[tag=!gnosia,tag=cryoVote] run playsound minecraft:block.lava.extinguish player @a -112.50 -12.03 -26.36 1 .4 0
execute as @e[tag=cryoVote] run playsound minecraft:block.lava.extinguish player @a -191.51 64.58 -1582.00 1 .4 0
tp @e[tag=votePos] -269 37.5 -1610 0 0
#function gnosia:phase/count-alive
#function gnosia:phase/count-roles

function gnosia:phase/tp-dead-to-cryoroom

scoreboard players set tabHidden gameStatus 1

