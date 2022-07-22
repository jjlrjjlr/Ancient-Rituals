# Spawn enemies and destroy structure when book is taken from lectern.
particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0.02 30 force
particle minecraft:soul_fire_flame ~ ~ ~ 1.5 0.5 1.5 0.02 30 force

# Awaken Skeleton guards
execute as @e[type=skeleton,distance=..7] as @s run data merge entity @s {NoAI:0b, Invulnerable:0b}

# Kill self, core no longer needed.
kill @s