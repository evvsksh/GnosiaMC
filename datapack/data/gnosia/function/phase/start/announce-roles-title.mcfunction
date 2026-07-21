title @a[tag=gnosia] times 10 100 20
title @a[tag=gnosia] subtitle {text:"You are the Gnosia!",color:"#e60039"}
title @a[tag=gnosia] title {text:""}
execute as @a[tag=gnosia] run playsound gnosia:chime4 ui @s ~ ~ ~ 1 1 1

title @a[tag=angel] times 0 100 20
title @a[tag=angel] subtitle {text:"You are the Guardian Angel!",color:"#f6ad3c"}
title @a[tag=angel] title {text:""}
execute as @a[tag=angel] run playsound gnosia:chime8 ui @s ~ ~ ~ 1 1 1

title @a[tag=doctor] times 0 100 20
title @a[tag=doctor] subtitle {text:"You are the Doctor!",color:"#8376b5"}
title @a[tag=doctor] title {text:""}
execute as @a[tag=doctor] run playsound gnosia:chime10 ui @s ~ ~ ~ 1 1 1

title @a[tag=engineer] times 0 100 20
title @a[tag=engineer] subtitle {text:"You are the Engineer!",color:"#187fc4"}
title @a[tag=engineer] title {text:""}
execute as @a[tag=engineer] run playsound gnosia:chime5 ui @s ~ ~ ~ 1 1 1

title @a[tag=acfollower] times 0 100 20
title @a[tag=acfollower] subtitle {text:"You are the AC Follower!",color:"#c60080"}
title @a[tag=acfollower] title {text:""}
execute as @a[tag=acfollower] run playsound gnosia:chime4 ui @s ~ ~ ~ 1 1 1

title @a[tag=bug] times 0 100 20
title @a[tag=bug] subtitle ["",{text:"-","obfuscated":true,color:"#253636"},{text:" You are the Bug! ",color:"#253636"},{text:"-","obfuscated":true,color:"#253636"}]
title @a[tag=bug] title {text:""}
execute as @a[tag=bug] run playsound gnosia:chime4 ui @s ~ ~ ~ 1 1 1

title @a[tag=crewmate] times 0 100 20
title @a[tag=crewmate] subtitle {text:"You are a Crew member!",color:"#6eba2b"}
title @a[tag=crewmate] title {text:""}
execute as @a[tag=crewmate] run playsound gnosia:chime2 ui @s ~ ~ ~ 1 1 1

title @a[tag=guard] times 0 100 20
title @a[tag=guard] subtitle {text:"You were on Guard Duty!",color:"#46b035"}
title @a[tag=guard] title {text:""}
execute as @a[tag=guard] run playsound gnosia:chime9 ui @s ~ ~ ~ 1 1 1

title @a[tag=!crew] times 0 100 20
title @a[tag=!crew] subtitle {text:"You are Spectating",color:gray}
title @a[tag=!crew] title {text:""}
execute as @a[tag=!crew] run playsound gnosia:chime3 ui @s ~ ~ ~ 1 1 1

execute if score maxGnosia rolesCheck matches 2.. as @a[tag=gnosia] run function gnosia:remind_teammates_gnosia
execute as @a[tag=guard] run function gnosia:remind_teammates_guard_duty
execute as @a[tag=crew,tag=!gnosia] run scoreboard players add humansLeft rolesLeft 1
