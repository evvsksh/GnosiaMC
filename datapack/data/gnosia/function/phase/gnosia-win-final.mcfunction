#playsound gnosia:gnosiawin player @a ~ ~ ~ 1 1 1
item replace entity @a[tag=gnosia] hotbar.4 with netherite_sword[enchantments={"unbreaking":3}] 1
effect give @a[tag=!gnosia] glowing infinite 1 true
effect give @a[tag=gnosia] speed infinite 2 true
effect give @a[tag=gnosia] resistance infinite 10 true
team modify crew color red
team modify engineer_claim color red
team modify doctor_claim color red
team modify guard_duty color red
team modify crew friendlyFire true
team modify engineer_claim friendlyFire true
team modify doctor_claim friendlyFire true
team modify guard_duty friendlyFire true
gamerule pvp true
difficulty easy