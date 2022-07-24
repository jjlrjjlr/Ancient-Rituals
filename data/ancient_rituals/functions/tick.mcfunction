# Tick functions for each ruined alter type.
execute as @e[type=minecraft:marker,name="ruined_dark_alter_core"] at @s run function ancient_rituals:ruined_dark_alter/tick
execute as @e[type=minecraft:marker,tag=ruined_light_alter_core] at @s run function ancient_rituals:ruined_light_alter/tick

# Tick function used for controlling growth gems.
execute as @e[type=minecraft:item,nbt={Item:{tag:{growth_gem:1b}}}] at @s run function ancient_rituals:gems/growth_gem/tick