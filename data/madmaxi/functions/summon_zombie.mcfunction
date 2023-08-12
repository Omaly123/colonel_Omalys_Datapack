# madmaxi/functions/summon_zombie.mcfunction

# Summon a zombie at the player's location
execute as @a[scores={zombieCooldown=0..}] run summon minecraft:zombie ~ ~ ~

# Set a cooldown of 60 (3 seconds) for the staff
execute as @a[scores={zombieCooldown=1..}] run scoreboard players remove @s zombieCooldown 1
