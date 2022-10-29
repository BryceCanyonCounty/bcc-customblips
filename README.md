# Custom Blips

#### Description

A simple script that allows for a server owner to place blips on the map at designated coordinates. You can customize the label, blip, and location.

#### FEATURES

- Configure blip placement by config
- Ability to job lock blips (only show to those in the job)
  - Switching Jobs will remove or activate blips based on new job
  - Uses the same job switch event that vorp_crafting checks
- Select your blip by hash. You can find the blip ID's [here](https://filmcrz.github.io/blips/)

#### Configuration

```lua
{
    -- Set jobs to {'Job', 'Job2'} to lock to specific jobs
    -- Set jobs to 0 to allow for all
    name = "Tubleweed Sheriff Office",
    ID = 1047294027,
    Pos = {x = -5529.71, y = -2927.65, z = -1.36},
    Jobs = { "police" }
},
```

#### INSTALATION

- place `mwg_customblips` in your resources folder
- add `ensure mwg_customblips` to your `resources.cfg`.
- restart server, enjoy.

#### DEPENDENCIES

None

#### SUPPORT

Feel free to create an issue if you need assitance or have issue

#### Credits

- Vorp dev team for information on how to place blips.
