# unfreeze any newly loaded entities
function freezer:entity/thaw

# get rid of extra tags
execute as @e[tag=freezer_item] run tag @s remove freezer_item
execute as @e[tag=freezer_mob] run tag @s remove freezer_mob
