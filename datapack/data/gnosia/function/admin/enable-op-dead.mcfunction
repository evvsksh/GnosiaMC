# This function is meant to give dead admin op perms.
# If they're dead they can't cheat... right?

execute as @a[tag=admin,tag=dead] run op @s[type=player]
