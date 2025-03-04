# Custom Blips

#### Description

A simple script that allows for a server owner to place blips on the map at designated coordinates. You can customize the label, blip, and location.

#### FEATURES

- Configure blip placement by config
- Ability to set a Job or Group as a restriction
- Ability to set colors
- Select your blip by hash. You can find the blip ID's [here](https://github.com/femga/rdr3_discoveries/tree/master/useful_info_from_rpfs/textures/blips_mp)

#### Configuration

In the config.lua file I have left many examples of different configurations utilizing the Police Department buildings. Feel free to remove those and enter your own!

```lua
{
    Name = 'Valentine Sheriff Office',      -- Name shown on map
    BlipHash = 1047294027,                  -- Name of blip
    Pos = vector3(-288.07, 804.33, 119.39), -- Location of the blip
    Restriction = 1,                         -- 0 = None, 1 = Job, 2 = Group
    Requirements = { 'police' },            -- Jobs allowed to see the blip. {} for public
    BlipColor = 'LIGHT_BLUE',               -- Use the table below to select your color
    BlipDistance = 100.0                    -- Distance the blip is visible from. 0 for always visible
},
```

#### INSTALATION

- place `bcc-customblips` in your resources folder
- add `ensure bcc-customblips` to your `resources.cfg`.
- restart server, enjoy.

#### SUPPORT

Feel free to create an issue if you need assitance or have issue

#### Credits

- Apollyon for proof reading my incredible typos
