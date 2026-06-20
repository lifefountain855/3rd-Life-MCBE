effect @s resistance 12 255 true
effect @s invisibility 12 255 true
effect @s weakness 12 255 true
effect @s night_vision 15 255 true
effect @s fire_resistance 12 255 true
gamemode adventure @s
clear @s


#hovering
tag @s remove air-1
tag @s remove air-2

execute @s ~~~ detect ~~-1~ air 0 tag @s add air-1
execute @s ~~~ detect ~~-2~ air 0 tag @s add air-2

effect @s[tag=!shift] slow_falling 12 0 true

scoreboard objectives add hovertimer dummy
scoreboard players add @s[tag=!shift] hovertimer 1
scoreboard players reset @s[tag=shift] hovertimer
scoreboard players set @s[scores={hovertimer=7..9}] hovertimer 0
effect @s[tag=jump] levitation 1 12 true

effect @s[scores={hovertimer=1},tag=air-1,tag=air-2] levitation 1 0 true
event entity @s[scores={hovertimer=2},tag=air-1,tag=air-2] shadow:no-levitation

effect @s[scores={hovertimer=3},tag=air-1,tag=air-2] levitation 1 0 true
event entity @s[scores={hovertimer=4},tag=air-1,tag=air-2] shadow:no-levitation

effect @s[scores={hovertimer=5},tag=air-1,tag=air-2] levitation 1 0 true
event entity @s[scores={hovertimer=6},tag=air-1,tag=air-2] shadow:no-levitation

event entity @s[tag=shift] shadow:no-levitation

title @s actionbar §7SPECTATOR

particle twr:endrod_custom ~~1~