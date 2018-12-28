# Better Drowned Datapack
A minecraft 1.13+ datapack that reintroduces pre-release behavior of converted 
drowned mobs being able to spawn with a trident.

This datapack was written to alleviate the issue of natural drowned with 
tridents being prohibitively rare on a multiplayer server, and allows for the 
building of trident farms using zombies as your starting mob. Drop rate for 
tridents have been unaffected.

`readme.md` is not required in the datapack zip file, but may be included with 
no ill effects.

## Usage
Find loads of zombies. Stick their heads in water. Wait for conversion. Profit.

## Structure
* `data`
  * `akoimeexx`
    * `functions`
      * `better_drowned`
        * `init.mcfunction`  
          Sets up scoreboard "timer" objective during `#minecraft:load`
        * `replace.mcfunction`  
          Summons a new drowned to take the place of and then kill `@s`
        * `search.mcfunction`  
          Runs `akoimeexx:better_drowned/replace` as 
          `@e[type=zombie,nbt=!{DrownedConversionTime:-1}]` and resets the 
          scoreboard "timer" objective
        * `timer.mcfunction`  
          Increases scoreboard "timer" objective during `#minecraft:tick` and 
          runs `akoimeexx:better_drowned/search` on matching `20..`
        * `uninstall.mcfunction`  
          Removes scoreboard "timer" objective
  * `minecraft`
    * `tags`
      * `functions`
        * `load.json`
        * `tick.json`
* `pack.mcmeta`
