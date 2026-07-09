# This function is meant to remove alive admin op perms.
# This is useful for debugging purposes.

execute as @a[tag=admin,tag=!dead] run deop @s[type=player]
