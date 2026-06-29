execute if score gnosiaLeft rolesLeft matches 0 if score bugLeft rolesLeft matches 0 if score humansLeft rolesLeft matches 1.. run function gnosia:phase/human-win
execute if score gnosiaLeft rolesLeft matches 0 if score bugLeft rolesLeft matches 1.. run function gnosia:phase/bug-win-human
execute if score gnosiaLeft rolesLeft >= humansLeft rolesLeft if score bugLeft rolesLeft matches 0 run function gnosia:phase/gnosia-win
execute if score gnosiaLeft rolesLeft >= humansLeft rolesLeft if score bugLeft rolesLeft matches 1.. run function gnosia:phase/bug-win-gnosia
execute if score gnosiaLeft rolesLeft < humansLeft rolesLeft if score gnosiaLeft rolesLeft matches 1.. run function gnosia:phase/free-time
