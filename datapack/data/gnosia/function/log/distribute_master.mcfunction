clear @a minecraft:written_book[minecraft:custom_data={masterLogs:1b}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{masterLogs:1b}}}}]
item replace entity @a[tag=!dead] hotbar.8 from block -300 88 -1610 container.0