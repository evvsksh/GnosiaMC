tag @r[tag=crew] add c1
tag @r[tag=crew,tag=!c1] add c2
tag @r[tag=crew,tag=!c1,tag=!c2] add c3
tag @r[tag=crew,tag=!c1,tag=!c2,tag=!c3] add c4
tag @r[tag=crew,tag=!c1,tag=!c2,tag=!c3,tag=!c4] add c5
tag @r[tag=crew,tag=!c1,tag=!c2,tag=!c3,tag=!c4,tag=!c5] add c6
tag @r[tag=crew,tag=!c1,tag=!c2,tag=!c3,tag=!c4,tag=!c5,tag=!c6] add c7
tag @r[tag=crew,tag=!c1,tag=!c2,tag=!c3,tag=!c4,tag=!c5,tag=!c6,tag=!c7] add c8
tag @r[tag=crew,tag=!c1,tag=!c2,tag=!c3,tag=!c4,tag=!c5,tag=!c6,tag=!c7,tag=!c8] add c9
tag @r[tag=crew,tag=!c1,tag=!c2,tag=!c3,tag=!c4,tag=!c5,tag=!c6,tag=!c7,tag=!c8,tag=!c9] add c10
tag @r[tag=crew,tag=!c1,tag=!c2,tag=!c3,tag=!c4,tag=!c5,tag=!c6,tag=!c7,tag=!c8,tag=!c9,tag=!c10] add c11
tag @r[tag=crew,tag=!c1,tag=!c2,tag=!c3,tag=!c4,tag=!c5,tag=!c6,tag=!c7,tag=!c8,tag=!c9,tag=!c10,tag=!c11] add c12
tag @r[tag=crew,tag=!c1,tag=!c2,tag=!c3,tag=!c4,tag=!c5,tag=!c6,tag=!c7,tag=!c8,tag=!c9,tag=!c10,tag=!c11,tag=!c12] add c13
tag @r[tag=crew,tag=!c1,tag=!c2,tag=!c3,tag=!c4,tag=!c5,tag=!c6,tag=!c7,tag=!c8,tag=!c9,tag=!c10,tag=!c11,tag=!c12,tag=!c13] add c14
tag @r[tag=crew,tag=!c1,tag=!c2,tag=!c3,tag=!c4,tag=!c5,tag=!c6,tag=!c7,tag=!c8,tag=!c9,tag=!c10,tag=!c11,tag=!c12,tag=!c13,tag=!c14] add c15
tellraw @a[tag=debug] "Roles assigned"

schedule function gnosia:remove-placeholderstands 5t
