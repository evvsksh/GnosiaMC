execute as @a[tag=docSearch,tag=gnosia] run tellraw @a[tag=doctor] [{"selector":"@s"}," turned out to be ",{"bold":true,"color":"#e60039","text":"Gnosia"}]
execute as @a[tag=docSearch,tag=!gnosia] run tellraw @a[tag=doctor] [{"selector":"@s"}," turned out to be ",{"bold":true,"color":"#6eba2b","text":"Human"}]
tag @a remove docSearch