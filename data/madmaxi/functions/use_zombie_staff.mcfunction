# madmaxi/functions/use_zombie_staff.mcfunction

# Summon a zombie at the player's location
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:99001}}}] run summon minecraft:zombie ~ ~ ~
