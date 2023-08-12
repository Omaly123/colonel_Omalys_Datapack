###Staff
###Detect players right clicking with carrot on a stick
execute as @a[scores={staff=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{colonel_staff:1b}}}] at @s run say Staff
###teleportation
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{colonel_staff_of_teleportation:1b}}}] at @s run execute at @s run particle minecraft:dust 0.333 0.027 0.733 0.4 ^ ^0.8 ^20 0 0 0 0 1 force @s
execute as @a[scores={staff=1..,teleport_charge=200..,teleport_cd=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{colonel_staff_of_teleportation:1b}}}] at @s run playsound entity.enderman.teleport player @a[distance=..50] ~ ~ ~ 0.2
execute as @a[scores={staff=1..,teleport_charge=200..,teleport_cd=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{colonel_staff_of_teleportation:1b}}}] at @s run function effects_custom:teleporting_pixel
execute as @a[scores={staff=1..,teleport_charge=200..,teleport_cd=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{colonel_staff_of_teleportation:1b}}}] at @s run execute at @s run tp @s ^ ^0.8 ^20 
execute as @a[scores={staff=1..,teleport_charge=200..,teleport_cd=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{colonel_staff_of_teleportation:1b}}}] at @s run playsound entity.enderman.teleport player @a[distance=..50] ~ ~ ~ 0.2
execute as @a[scores={staff=1..,teleport_charge=200..,teleport_cd=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{colonel_staff_of_teleportation:1b}}}] run scoreboard players remove @s teleport_charge 200
execute as @a[scores={staff=1..,teleport_charge=200..,teleport_cd=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{colonel_staff_of_teleportation:1b}}}] run scoreboard players set @s teleport_cd 5
execute as @a[scores={staff=1..,teleport_charge=200..,teleport_cd=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{colonel_staff_of_teleportation:1b}}}] at @s run function effects_custom:teleporting_pixel
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{colonel_staff_of_teleportation:1b}}}] run bossbar set teleport_charge0 players @a[scores={teleport_charge=0..199}]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{colonel_staff_of_teleportation:1b}}}] run bossbar set teleport_charge1 players @a[scores={teleport_charge=200..399}]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{colonel_staff_of_teleportation:1b}}}] run bossbar set teleport_charge2 players @a[scores={teleport_charge=400..599}]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{colonel_staff_of_teleportation:1b}}}] run bossbar set teleport_charge3 players @a[predicate=colonel:has_spellbook_teleportation,scores={teleport_charge=600..}]
execute as @a[scores={teleport_cd=1..}] run scoreboard players remove @s teleport_cd 1
###levitate
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{colonel_staff_of_levitate:1b}}}] anchored eyes positioned ^ ^ ^ run function effects_custom:levitate_raycast
###Fireball
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{colonel_staff_of_fireball:1b}}}, scores={staff=1..,fireball_cd=0}] at @s run playsound entity.blaze.burn player @a ~ ~ ~
execute at @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{colonel_staff_of_fireball:1b}}}, scores={staff=1..,fireball_cd=0}] run summon fireball ^ ^1 ^1 {ExplosionPower:3}
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{colonel_staff_of_fireball:1b}}}, scores={staff=1..,fireball_cd=0}] run say fireball!
execute as @a[scores={fireball_cd=0..}] run bossbar set fireball_cd1 players @a[scores={fireball_cd=41..}]
execute as @a[scores={fireball_cd=0..}] run bossbar set fireball_cd2 players @a[scores={fireball_cd=21..40}]
execute as @a[scores={fireball_cd=0..}] run bossbar set fireball_cd3 players @a[scores={fireball_cd=1..20}]
execute as @a[scores={fireball_cd=1..}] run scoreboard players operation @s fireball_cd -= #1 num
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{colonel_staff_of_fireball:1b}}}, scores={staff=1..,fireball_cd=0}] run scoreboard players operation @s fireball_cd = #fireball_cooldown num
###Shield 
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{colonel_staff_of_shield:1b}}}, scores={shield_cd=0,}] run scoreboard players operation @s shield_cd = #shield_cooldown num
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{colonel_staff_of_shield:1b}}}, scores={shield_cd=0}] run scoreboard players operation @s shield_cd = #shield_cooldown num
###Magic_Missile
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{colonel_staff_of_magic_missile:1b}}}, scores={staff=1..,magic_missile_cd=0}] run function effects_custom:magic_missile
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{colonel_staff_of_magic_missile:1b}}}, scores={staff=1..,magic_missile_cd=0}] run scoreboard players operation @s magic_missile_cd = #magic_missile_cooldown num

###reset Staff score
scoreboard players remove @a[scores={staff=1..}] staff 1