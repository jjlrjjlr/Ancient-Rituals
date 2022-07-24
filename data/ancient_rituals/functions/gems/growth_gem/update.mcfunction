# Summon a new marker entity to check for and grow crops.
summon minecraft:marker ~ ~ ~ {Tags:["growth_gem_effect_worker"]}

# Spread growth_gem_effect_worker up to five blocks away and check for
# a growable crop one block down using the gem_growable predicate. If a
# growable block is found run the grow_crop function.
spreadplayers ~ ~ 1 5 false @e[type=minecraft:marker,tag=growth_gem_effect_worker,distance=..6]
execute as @e[type=minecraft:marker,tag=growth_gem_effect_worker,distance=..6] at @s if predicate ancient_rituals:gem_growable run function ancient_rituals:gems/growth_gem/grow_crop
