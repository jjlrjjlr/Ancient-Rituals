# Setup the structure when first spawned in.

# Ensure skeleton guards are facing correct way.
execute as @e[type=skeleton,distance=..7,tag=ruined_light_alter_guardian] run execute as @s at @s facing entity @e[type=minecraft:marker,tag=ruined_light_alter_core,distance=..5,limit=1] feet run teleport @s ~ ~ ~ ~ ~30

# Mark setup as complete.
data merge entity @s {data:{setup: 1b}}