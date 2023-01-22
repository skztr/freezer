# must run as a specific, frozen entity

# undo the freeze
execute if entity @s[tag=freezer_mob] run function freezer:entity/thaw_one_mob
execute if entity @s[tag=freezer_item] run function freezer:entity/thaw_one_item

execute store result entity @s PersistenceRequired byte 1.0 run scoreboard players get @s freezer_persist
execute store result entity @s Invulnerable byte 1.0 run scoreboard players get @s freezer_invuln

tag @s remove freezer_frozen
