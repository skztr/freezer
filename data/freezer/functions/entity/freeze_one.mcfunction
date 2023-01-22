# must run as a specific, non-frozen entity

# remember previous settings
execute store result score @s freezer_air run data get entity @s Air
execute store result score @s freezer_age run data get entity @s Age
execute store result score @s freezer_fire run data get entity @s Fire
execute store result score @s freezer_frozen run data get entity @s TicksFrozen
execute store result score @s freezer_invuln run data get entity @s Invulnerable
execute store result score @s freezer_noai run data get entity @s NoAI
execute store result score @s freezer_persist run data get entity @s PersistenceRequired
execute store result score @s freezer_pickup run data get entity @s PickupDelay

# we use the existence of NoAI nbt data to distinguish between "mobs" and "items"
# really, this is a distinction between "age means development cycle" vs "age means despawn timer"
# specifically, entities for which age means development cycle, we want to restore the age of for every tick.
# those for which it means something else, we set to a minimum value, once, so it will never change
data merge entity @s {Invulnerable:1b,NoAI:1b,PersistenceRequired:1b}
tag @s[nbt={NoAI:1b}] add freezer_mob
tag @s[tag=!freezer_mob] add freezer_item
data merge entity @s[tag=freezer_item] {Age:-32768,PickupDelay:32767}
tag @s add freezer_frozen
