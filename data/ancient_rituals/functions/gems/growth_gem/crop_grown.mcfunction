# Count crop as having been grown and subtract 1 from growths_left.
execute store result score @s growths_left as @s run data get entity @s Item.tag.growths_left
scoreboard players remove @s growths_left 1
execute store result entity @s Item.tag.growths_left int 1 as @s run scoreboard players get @s growths_left
execute as @s if data entity @s {Item:{tag:{growths_left:0}}} run kill @s