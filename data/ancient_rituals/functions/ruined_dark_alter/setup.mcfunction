# Setup the structure when first spawned in.

# Ensure skeleton guards are facing correct way.
execute as @e[type=skeleton,distance=..7] facing entity @s eyes at @s run tp ~ ~ ~

# Mark setup as complete.
data merge entity @s {data:{setup: 1b}}