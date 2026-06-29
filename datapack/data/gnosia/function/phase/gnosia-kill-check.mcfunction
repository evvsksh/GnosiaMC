execute if score gnosiaLeft rolesLeft matches 1.. if score gnosiaKillChoose gnosiaKillChoose matches 0 as @r[tag=crew,tag=!gnosia,tag=!dead] run scoreboard players operation gnosiaKillChoose gnosiaKillChoose = @s playersID
execute if score gnosiaKillChoose gnosiaKillChoose = angelSave gnosiaKillChoose run scoreboard players set #timernightfail delay 0
execute if score gnosiaKillChoose gnosiaKillChoose = bugID gnosiaKillChoose run scoreboard players set #timernightfail delay 0
execute if score gnosiaKillChoose gnosiaKillChoose < angelSave gnosiaKillChoose if score gnosiaKillChoose gnosiaKillChoose < bugID gnosiaKillChoose run scoreboard players set #timernightkill delay 0
execute if score gnosiaKillChoose gnosiaKillChoose > angelSave gnosiaKillChoose if score gnosiaKillChoose gnosiaKillChoose < bugID gnosiaKillChoose run scoreboard players set #timernightkill delay 0
execute if score gnosiaKillChoose gnosiaKillChoose > angelSave gnosiaKillChoose if score gnosiaKillChoose gnosiaKillChoose > bugID gnosiaKillChoose run scoreboard players set #timernightkill delay 0
execute if score gnosiaKillChoose gnosiaKillChoose < angelSave gnosiaKillChoose if score gnosiaKillChoose gnosiaKillChoose > bugID gnosiaKillChoose run scoreboard players set #timernightkill delay 0
scoreboard players set angelSave gnosiaKillChoose 0
scoreboard players set angelSave gnosiaKillChoose 0




