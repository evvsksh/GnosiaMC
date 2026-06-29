#execute as @e[type=armor_stand,sort=random,tag=music]
stopsound @a record
schedule clear gnosia:music/discussion-music
schedule clear gnosia:music/voting-music
schedule clear gnosia:music/free-time-music

execute store result score voting-music music run random value 1..4

execute if score votinglastPlayed music = voting-music music run scoreboard players remove voting-music music 1
execute if score votinglastPlayed music = voting-music music if score voting-music music matches 2..4 run scoreboard players remove voting-music music 1
execute if score votinglastPlayed music = voting-music music if score voting-music music matches 1 run scoreboard players add voting-music music 1

execute if score voting-music music matches 1 run playsound gnosia:ost.gnosia-is-you record @a ~ ~ ~ .2 1 .2
execute if score voting-music music matches 2 run playsound gnosia:ost.this-is-a-lie record @a ~ ~ ~ .2 1 .2
execute if score voting-music music matches 3 run playsound gnosia:ost.truth record @a ~ ~ ~ .2 1 .2
execute if score voting-music music matches 4 run playsound gnosia:ost.voting record @a ~ ~ ~ .2 1 .2

scoreboard players operation votinglastPlayed music = voting-music music

schedule function gnosia:music/voting-music 230s
# asdsadsadad

# Nome file                      | Secondi    | Tick      
# -------------------------------------------------------------
# a-ray-of-hope.ogg              | 195        | 3900       | F
# a-sip-of-wonder.ogg            | 180        | 3600       | F
# aster-anime.ogg                | 164        | 3280       |
# aster.ogg                      | 220        | 4400       |
# back-street-cats.ogg           | 120        | 2400       | F
# bake-no-kawa.ogg               | 180        | 3600       |
# blue-sky-blue-stars.ogg        | 365        | 7300       | 
# call-of-ender-anime.ogg        | 207        | 4140       | F
# call-of-ender.ogg              | 260        | 5200       | F
# climax.ogg                     | 48         | 960        |
# eyes-of-you.ogg                | 170        | 3400       |
# floor-killer.ogg               | 184        | 3680       |
# flying-yellow-cucumber.ogg     | 85         | 1700       |
# for-your-fun.ogg               | 100        | 2000       |
# gnosia-is-you.ogg              | 219        | 4380       | D/V
# hollow-vessel.ogg              | 149        | 2980       |
# ice-prison.ogg                 | 200        | 4000       | WD
# in-the-unknown-ship.ogg        | 145        | 2900       | F
# loo-whoo.ogg                   | 249        | 4980       |
# look-into-my-eyes.ogg          | 122        | 2440       | S 
# red-alert-anime.ogg            | 154        | 3080       | PANIC
# red-alert.ogg                  | 140        | 2800       | PANIC
# remind-me.ogg                  | 125        | 2500       | F
# routine.ogg                    | 170        | 3400       | F
# shooting-stars-go-away.ogg     | 135        | 2700       | 
# suspicion-anime.ogg            | 179        | 3580       | D
# suspicion.ogg                  | 160        | 3200       | D
# the-last-march-of-us.ogg       | 190        | 3800       |
# the-silver-key.ogg             | 195        | 3900       | F
# this-is-a-lie.ogg              | 185        | 3700       | V
# truth.ogg                      | 70         | 1400       | V
# ululo-anime.ogg                | 215        | 4300       | F
# ululo.ogg                      | 230        | 4600       | F
# voting.ogg                     | 210        | 4200       | V
# we-all-broken.ogg              | 105        | 2100       | W
# we-are-gnosia.ogg              | 191        | 3820       | 
# wind-blows.ogg                 | 133        | 2660       | W
# world-of-probability.ogg       | 105        | 2100       | F