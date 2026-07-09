# This function is meant to give alive admin op perms.
# This is useful for debugging purposes.

execute as @a[tag=admin,tag=!dead] run op @s[type=player]
