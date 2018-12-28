# Datapack notes
`notes.md` is used as a catch-basin of interesting tidbits and ideas for my 
datapack projects, as well as notes on specific files/functions needed.

This file is not required in the datapack zip file, but may be included with no 
ill effects.

## `akoimeexx:better_drowned/replace` and 1.14-pre+

Included in the `data/akoimeexx/functions/better_drowned/replace.mcfunction` 
file are two commented out lines. These lines enable the datapack to copy the 
armor from the zombie being replaced onto the drowned that has been summoned in 
without losing the trident; as well as provide a better way to set the newly 
summoned drowned's `IsBaby` nbt value based on the source zombie.

In practice, the 1.13 IsBaby method has not been 100% reliable and sometimes 
produces baby drowned. I believe this to be an issue with copying the value 
from a zombie that doesn't have it set causing the game mechanics to randomly 
set it. Not ideal, but I'm not terribly worried about it.

A release file will be provided with the 1.14 changes already; but should be 
considered unsupported until 1.14 has been fully released.
