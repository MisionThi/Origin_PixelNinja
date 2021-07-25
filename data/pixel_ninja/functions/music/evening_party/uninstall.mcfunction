tag @e remove nbs_Eveningpar
scoreboard objectives remove nbs_Eveningpar
scoreboard objectives remove nbs_Eveningpar_t
datapack disable "file/Evening party.zip"
tellraw @s ["",{"text":"[NBS] ","color":"gold","bold":"true"},{"text":"Data pack ","color":"yellow"},{"text":"Evening party.zip","color":"gold","underlined":"true"},{"text":" uninstalled successfully. You may now remove it from your data pack folder.","color":"yellow"}]