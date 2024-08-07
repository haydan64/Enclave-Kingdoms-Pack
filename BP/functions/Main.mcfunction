titleraw @a title {"rawtext":[{"text":"§z§dWelcome To Enclave"},{"text":"\nName: "},{"selector":"*"},{"text":"\n§6Silver: $"},{"score":{"name":"*","objective":"Money"}}]}
execute as @a[tag=leg] at @s run titleraw @s subtitle {"rawtext":[{"text":"§z§1Legion\n§aOnline Members: \n§p"}, {"selector":"@a[tag=leg]"}]}
execute as @a[tag=kam] at @s run titleraw @s subtitle {"rawtext":[{"text":"§z§6Kamereons\n§aOnline Members: \n§p"}, {"selector":"@a[tag=kam]"}]}
execute as @a[tag=mer] at @s run titleraw @s subtitle {"rawtext":[{"text":"§z§2Mercenaries\n§aOnline Members: \n§p"}, {"selector":"@a[tag=mer]"}]}
execute as @a[tag=war] at @s run titleraw @s subtitle {"rawtext":[{"text":"§z§4Warriors\n§aOnline Members: \n§p"}, {"selector":"@a[tag=war]"}]}
tp @a[x=88,y=69,z=131,rm=5000, tag=!admin] 88 69 131
title @a[x=88,y=69,z=131,rm=4800] actionbar §4You are near the world border!

execute as @e [type=slime] at @s if block ~ ~-1 ~ farmland run scriptevent enclave:despawn

gamemode a @a[x=88,y=69,z=131,r=50,m=!a,tag=!admin]
title @a[x=88,y=69,z=131,r=50] subtitle §z§6You are currently in spawn!
tp @e[family=monster,x=88,y=69,z=131,r=50] 0 0 0
effect @a[x=88,y=69,z=131,r=50] weakness 1 255 true
effect @a[x=88,y=69,z=131,r=50] resistance 1 255 true
effect @a[x=88,y=69,z=131,r=50] fire_resistance 1 255 true
effect @a[x=88,y=69,z=131,r=50] regeneration 1 255 true
gamemode s @a[x=88,y=69,z=131,rm=51,m=!s,tag=!admin]
title @a[x=88,y=69,z=131,rm=51,r=54] subtitle §z§aYou are no longer in spawn!


execute at @a run fill ~-8 ~-4 ~-8 ~8 ~12 ~8 diamond_block replace mob_spawner
clear @a empty_map
clear @a filled_map

playsound enclave:metal_pipe @a[hasitem={item=enclave:metal_pipe}]
clear @a enclave:metal_pipe
