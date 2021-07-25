
# append to hotbar
data modify storage tools:temp PlayerStorage[].hotbar append from storage tools:temp PlayerStorage[].hotbar[0]

# remove from hotbar
data remove storage tools:temp PlayerStorage[].hotbar[0]