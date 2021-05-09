# Introduction

This resource saves natives into a cache table reducing the overall number of native requests from the client. This gives an all round boost to overall server performance and decreases the loading times of any scripts that use the cache.

## Example

[The esx_policejob client file](https://github.com/esx-framework/esx_policejob/blob/master/client/main.lua) calls the `PlayerPedId()`native 18 times - the same data can be retrieved from a single call through `Cache.PlayerPedId`

## Requirements

* None (Standalone)

# Installation

### Step 1 - Calling The Cache Data

Any script that you wish to utilize to use the cache needs to call the cache table at the start of it by placing this code at the top of the client file inside of a thread:


	while Cache == nil do
		TriggerEvent('mascotte-cache:getCacheData', function(CacheData) Cache = CacheData end)
		Citizen.Wait(0)
	end


### Step 2 - fxmanifest.lua 

Insert this line into client_scripts in the fxmanifest.lua of the script you wish to utilize the cache

`"@mascotte-cache/client/cl_cache.lua",`

### Step 3 - Replacing Native Calls With Cached Data

You'll need to do this manually by yourself. Here's an example of what you'll need to do:

So here we have PlayerPedId() saved into the cache:


`Cache.ClientPedId = PlayerPedId()`


Anywhere you see `PlayerPedId()` in your script you'll need to replace it with `Cache.ClientPedId`

### Step 4 - server.cfg

Place `start mascotte-cache` before your framework/scripts


## Adding More Natives To The Cache

I'll update this as regularly as I can, but if you wish to add your own cached values then all you need to do is follow this format:

1. Cache.YourNameHere = NativeYouWantToCache() -- Add undeneath the `Cache = {}` table
2. Cache.YourNameHere = NativeYouWantToCache() -- Add into one of the threads. If it's dynamic data make sure it doesn't go in the first thread!
