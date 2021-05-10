# (WIP) Work In Progress!

This script isn't yet 100% complete. If you have anything you'd like to contribute towards the project feel free to submit a pull request!


## **Introduction**

This resource saves natives into a cache table reducing the overall number of server requests from the Client. This gives an all round boost to overall server performance and decreases the loading times of any scripts that use the cache.

 For Example:

[The esx_policejob client file](https://github.com/esx-framework/esx_policejob/blob/master/client/main.lua) calls the `PlayerPedId()` native 18 times - the same data can be retrieved from a single call through `Cache.PlayerPedId`

***(Note: ESX is not a requirement for this script)***

In a nutshell, it cuts the amount of native calls by a huge amount depending on what you cache.

This is an ongoing *work in progress* - so any contribution or input will always be greatly appreciated!

[You can download the script here from github](https://github.com/KingMascotte/mascotte-cache)

# Installation

### Step 1 - Calling The Cache Data

Let's say you want to return the `PlayerPedId()` - we can call it through an export from the script by using:

`exports.cache:requestCache().PlayerPed`

**Make sure that the resource name doesn't have a hyphen in the name (the - symbol) or it'll return an error of:**

  `attempt to index a nil value (global 'cache')`

### Step 2 - fxmanifest.lua

Insert this line into client_scripts in the fxmanifest.lua of the script you wish to utilize the cache

`"@mascotte-cache/client/cl_cache.lua",`

### Step 3 - Replacing Native Calls With Cached Data

You'll need to do this manually by yourself. Here's an example of what you'll need to do:

So here we havePlayerPedId() saved into the cache:

`Cache.PlayerPed = PlayerPedId()`

Anywhere you see `PlayerPedId()` in your script you'll need to replace it with `Cache.PlayerPed`

### Step 4 - server.cfg

Place `start mascotte-cache` before your framework/scripts

## Adding More Natives To The Cache

I'll update this as regularly as I can, but if you wish to add your own cached values then all you need to do is follow this format:


`Cache.YourNameHere = NativeYouWantToCache()` -- Add into the thread

## Changelog

- Cache is no longer called through the global environment 
- Name was changed to just cache to prevent an earlier mentioned error from occuring
- Forum thread name was changed to better represent any contributors to the project
- Script was given a huge clean up


## Kudos 

- @d0p3t - As the only information I could find about creating a cache to begin with was from a post he made on the CFX discord explaining how to cache data from natives

- @NotSomething0 - For his contribution towards cleaning up a lot of the code and who I consulted a lot with during the commencment of development of the script
