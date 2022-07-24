# Self rescheduling function which acts as clock controlling
# how much time passes between crop growth attempts.

# Kill off any lingering growth gem workers before spawning new ones.
execute as @e[type=minecraft:marker,tag=growth_gem_effect_worker] at @s run kill @s

execute as @e[type=item,nbt={Item:{tag:{growth_gem:1b}}}] at @s run function ancient_rituals:gems/growth_gem/update

# Schedule self to run again in 30s.
schedule function ancient_rituals:gems/growth_gem/schedule 5s replace