particle happy_villager ~ ~ ~ 0.3 0.5 0.3 0.2 20

# Check which growable crop is currently at ~-1 y, then
# replace it with it's fully grown varient using setblock.
execute as @s at @s if block ~ ~-1 ~ sweet_berry_bush run setblock ~ ~-1 ~ sweet_berry_bush[age=3]
execute as @s at @s if block ~ ~-1 ~ beetroots run setblock ~ ~-1 ~ beetroots[age=3]
execute as @s at @s if block ~ ~-1 ~ wheat run setblock ~ ~-1 ~ wheat[age=7]
execute as @s at @s if block ~ ~-1 ~ potatoes run setblock ~ ~-1 ~ potatoes[age=7]
execute as @s at @s if block ~ ~-1 ~ carrots run setblock ~ ~-1 ~ carrots[age=7]

# Execute the crop_grown function on the growth gem to track uses left.
execute as @e[type=item,nbt={Item:{tag:{growth_gem:1b}}},distance=..6] run function ancient_rituals:gems/growth_gem/crop_grown

# Cleanup worker at EOL
kill @s