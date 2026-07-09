# This function is meant to remove dead admin op perms.
# I guess they cheated

execute as @a[tag=admin,tag=dead] run deop @s[type=player]
