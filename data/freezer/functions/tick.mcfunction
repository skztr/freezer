execute if score #freezer freezer_frozen matches 1.. run function freezer:maintain_freeze
execute if score #freezer freezer_frozen matches 0 run function freezer:maintain_thaw
