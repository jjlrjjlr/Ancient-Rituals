# Logic for the dark alter core.

# If setup has not been done do it now.
execute as @s if data entity @s {data:{setup:0b}} at @s run function ancient_rituals:ruined_dark_alter/setup

# Test particle for locating the core marker entity.
particle minecraft:enchant ~ ~1 ~ 1.75 1 1.75 0.01 2 force

# Give players within range of the alter mining
# fatigue to prevent breaking the structure.
effect give @e[type=player,gamemode=survival,distance=..11] mining_fatigue 15 4 true
effect give @e[type=player,gamemode=survival,distance=..6] weakness 15 1 true

# Check if book has been taken, if it has, begin
# destruction of strucure.
execute as @s at @s unless block ~ ~-1 ~ minecraft:lectern[has_book=true]{Book:{tag:{author:"Unknown",title:"Ancient Rituals"}}} run function ancient_rituals:ruined_dark_alter/book_taken

