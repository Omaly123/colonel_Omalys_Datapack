### cooldowns
scoreboard players set @a[tag=!enabled] cd_summon_zombie 0
tag @a[tag=!enabled] add enabled

### Staff
execute as @a[scores={staff=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{colonel_staff:1b}}}] at @s run say Staff
### Summon Zombie
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{staff_of_zombie:1b}}}, scores={staff=1..,zombie_cd=0}] at @s run playsound entity.zombie.ambient player @a ~ ~ ~
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{staff_of_zombie:1b}}}, scores={staff=1..,zombie_cd=0}] run function madmaxi:summon_zombie
execute as @a[scores={zombie_cd=0..}] run bossbar set zombie_cd1 players @a[scores={zombie_cd=41..}]
execute as @a[scores={zombie_cd=0..}] run bossbar set zombie_cd2 players @a[scores={zombie_cd=21..40}]
execute as @a[scores={zombie_cd=0..}] run bossbar set zombie_cd3 players @a[scores={zombie_cd=1..20}]
execute as @a[scores={zombie_cd=1..}] run scoreboard players operation @s zombie_cd -= #1 num
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{staff_of_zombie:1b}}}, scores={staff=1..,zombie_cd=0}] run scoreboard players operation @s fireball_cd = #fireball_cooldown num