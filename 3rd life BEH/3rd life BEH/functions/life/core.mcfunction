

#spectator
execute @a[tag=spec] ~~~ function life/branch/spec

#once
execute @a[tag=!once] ~~~ function life/branch/once

#reset
execute @a[tag=restart] ~~~ function life/settings/reset

#dead functions
execute @a[tag=dead,scores={lives=3}] ~~~ function life/dead/3to2
execute @a[tag=dead,scores={lives=2}] ~~~ function life/dead/2to1
execute @a[tag=dead,scores={lives=1}] ~~~ function life/dead/1to0

#removing spec
tag @a[scores={lives=3}] remove spec
tag @a[scores={lives=2}] remove spec
tag @a[scores={lives=1}] remove spec

#actionbars
title @a[scores={lives=3}] actionbar §o3§r§a§l Lives
title @a[scores={lives=2}] actionbar §o2§r§e§l Lives
title @a[scores={lives=1}] actionbar §o1§r§4§l Life

#lives setter
scoreboard objectives setdisplay sidebar lives
scoreboard objectives setdisplay list lives
