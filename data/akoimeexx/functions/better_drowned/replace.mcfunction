summon drowned ~ ~ ~
playsound entity.zombie.converted_to_drowned hostile @a[distance=..16]
#execute if entity @s[nbt={ArmorItems:[]}] data modify entity @e[type=drowned,limit=1,sort=nearest] ArmorItems set from entity @s ArmorItems
#data modify entity @e[type=drowned,limit=1,sort=nearest] IsBaby set from entity @s IsBaby
execute at @s[nbt={IsBaby:1b}] store result entity @e[type=minecraft:drowned,distance=..1,limit=1] IsBaby byte 1 run data get entity @s IsBaby
effect give @s minecraft:invisibility 5 1 true
tp @s ~ -128 ~
kill @s
