# must run as a specific, frozen entity which is a mob
execute store result entity @s Air short 1.0 run scoreboard players get @s freezer_air
execute store result entity @s Age short 1.0 run scoreboard players get @s freezer_age
execute store result entity @s Fire short 1.0 run scoreboard players get @s freezer_fire
execute store result entity @s TicksFrozen int 1.0 run scoreboard players get @s freezer_frozen
