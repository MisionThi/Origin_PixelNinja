# adds scoreboards
scoreboard objectives add pixel_id dummy
scoreboard objectives add pixel_party_c dummy
scoreboard objectives add pixel_party_t dummy
scoreboard objectives add pixel_party_k dummy
function thi_storage_lib:thi_storage_lib/load


# gives pixel_id
execute unless score $pixel_id pixel_id matches 1.. run scoreboard players set $pixel_id pixel_id -2
execute unless score @s pixel_id matches 1.. run scoreboard players add $pixel_id pixel_id 3
execute unless score @s pixel_id matches 1.. run scoreboard players set @s PlayerID 0
execute unless score @s pixel_id matches 1.. run scoreboard players operation @s pixel_id = $pixel_id pixel_id
scoreboard players operation @s PlayerID += @s pixel_id


