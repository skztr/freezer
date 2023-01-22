execute as @e[tag=freezer_frozen,tag=freezer_mob] run function freezer:entity/maintain_freeze_one_mob

# freeze any newly loaded entities
function freezer:entity/freeze
