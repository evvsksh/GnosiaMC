execute if score @s alreadyVotedCryo matches 0 run scoreboard players add noCryo revoteCryo 1
execute if score @s alreadyVotedCryo matches 0 run playsound gnosia:select player @s ~ ~ ~ 1 1 1
execute if score @s alreadyVotedCryo matches 0 run tellraw @a [{"selector":"@s"}," voted for",{"bold":true,"color":"red","text":" Skip Cryosleep for Today"}]
execute if score @s alreadyVotedCryo matches 1 run tellraw @s {"color":"dark_red","text":"You already voted!"}
scoreboard players set @s alreadyVotedCryo 1