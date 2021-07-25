
# append to armor
data modify storage tools:temp PlayerStorage[].armor append from storage tools:temp PlayerStorage[].hotbar[0]

# remove from hotbar
data remove storage tools:temp PlayerStorage[].hotbar[0]