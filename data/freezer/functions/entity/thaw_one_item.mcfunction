# must run as a specific, frozen entity which is an item
execute store result entity @s Age short 1.0 run scoreboard players get @s freezer_age
execute store result entity @s PickupDelay short 1.0 run scoreboard players get @s freezer_pickup
