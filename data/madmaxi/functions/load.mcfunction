tellraw @a {"text": "madmaxi loaded!", "color": "#139900"}

###to add all cooldown scores to all players, when reloading:
tag @a[tag=enabled] remove enabled

###for killing things that have a set livetime
scoreboard objectives add lifetime dummy

###for giving Mods speacial skills
scoreboard objectives add isMod dummy

###Staff
scoreboard objectives add staff minecraft.used:minecraft.carrot_on_a_stick

###numbers
scoreboard objectives add num dummy
scoreboard players set #1 num 1
scoreboard players set #0 num 0

###Fireball
scoreboard objectives add zombie_cd dummy
scoreboard players set #zombie_cooldown num 60
bossbar add zombie_cd1 "cooldown"
bossbar add zombie_cd2 "cooldown"
bossbar add zombie_cd3 "cooldown"
bossbar set zombie_cd1 color red
bossbar set zombie_cd2 color red
bossbar set zombie_cd3 color red
bossbar set zombie_cd1 max 3
bossbar set zombie_cd2 max 3
bossbar set zombie_cd3 max 3
bossbar set zombie_cd1 value 3
bossbar set zombie_cd2 value 2
bossbar set zombie_cd3 value 1