#This pack was made by AlexKhoen1.

# Give them death score
execute as @a unless score @s one_death matches -2147483648..2147483647 run scoreboard players set @s one_death 5

# Track if a player dies and add players to teams
team join one_sixth @a[scores={one_death=5},team=!one_sixth]

# Change gamemode to spectator when lives are done
gamemode spectator @a[scores={one_death=6},team=!one_died]
team join one_died @a[scores={one_death=6},team=!one_died]

# after dead
title @a[scores={one_death=6}] actionbar {"text":"You Died","bold":true,"color":"dark_red"}
effect give @a[scores={one_death=6}] blindness 1000000 3
