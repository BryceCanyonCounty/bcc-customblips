# Custom Blips

#### Description

A simple script that allows for a server owner to place blips on the map at designated coordinates. You can customize the label, blip, and location.

#### FEATURES

- Configure blip placement by config
- Ability to job lock blips (only show to those in the job)

- Ability to show blips to groups. Enable Groups in the settings (near the top)

  - Note: If groups are enabled players with the job will still see the blip (if that is not desired change the job to random text)
  - For example if the job is "police" and the group is "admin". The blip will be displayed for all police and admins.
  - To only show to admins set the job option to a job that doesn't exist on your server. (Job cannot be left empty when using groups or it will be available for all)

- Ability to set colors
- Select your blip by hash. You can find the blip ID's [here](https://github.com/femga/rdr3_discoveries/tree/master/useful_info_from_rpfs/textures/blips_mp)

#### Configuration

In the config.lua file I have left many examples of different configurations utilizing the Police Department buildings. Feel free to remove those and enter your own!

```lua
{
    Name = 'Valentine Sheriff Office',      -- Name shown on map
    BlipHash = 1047294027,                  -- Name of blip
    Pos = vector3(-288.07, 804.33, 119.39), -- Location of the blip
    Jobs = { 'police' },                    -- Jobs allowed to see the blip. {} for public
    Group = { 'admin' },                    -- Only show based on VORP character group. {} for public. Only works if UseGroups is true.
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
