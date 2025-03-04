Config = {}

Config.Blips = {
    {
        Name = 'Valentine Sheriff Office',      -- Name shown on map
        BlipHash = 1047294027,                  -- Name of blip
        Pos = vector3(-288.07, 804.33, 119.39), -- Location of the blip
        Restriction = 1,                         -- 0 = None, 1 = Job, 2 = Group
        Requirements = { 'police' },            -- Jobs allowed to see the blip. {} for public
        BlipColor = 'LIGHT_BLUE',               -- Use the table below to select your color
        BlipDistance = 100.0                    -- Distance the blip is visible from. 0 for always visible
    },
    {
        Name = 'Saint Dennis Sheriff Office',
        BlipHash = 1047294027,
        Pos = vector3(2513.02, -1309.21, 48.97),
        Restriction = 2,
        Requirements = { 'admin' },
        BlipColor = 'PURPLE',
        BlipDistance = 100.0,
    },
    {
        Name = 'Blackwater Sheriff Office',
        BlipHash = 1047294027,
        Pos = vector3(-762.14, -1269.43, 44.07),
        Restriction = 0,
        Requirements = {},
        BlipColor = 'ORANGE',
        BlipDistance = 100.0,
    },
    {
        Name = 'Armadillo Sheriff Office',
        BlipHash = 1047294027,
        Pos = vector3(-3621.78, -2603.33, -13.29),
        Restriction = 0,
        Requirements = {},
        BlipColor = 'DARK_RED',
        BlipDistance = 100.0,
    },
    {
        Name = 'Tubleweed Sheriff Office',
        BlipHash = 1047294027,
        Pos = vector3(-5529.71, -2927.65, -1.36),
        Restriction = 0,
        Requirements = {},
        BlipColor = 'PINK',
        BlipDistance = 100.0,
    },
    {
        Name = 'Strawberry Sheriff Office',
        BlipHash = 1047294027,
        Pos = vector3(-1810.44, -349.6, 164.65),
        Restriction = 0,
        Requirements = {},
        BlipColor = 'WHITE',
        BlipDistance = 100.0,
    },
    {
        Name = 'Annesburg Sheriff Office',
        BlipHash = 1047294027,
        Pos = vector3(2906.6, 1312.02, 44.94),
        Restriction = 0,
        Requirements = {},
        BlipColor = 'PINKISH',
        BlipDistance = 100.0,
    },
    {
        Name = 'Rhodes Sheriff Office',
        BlipHash = 1047294027,
        Pos = vector3(1361.01, -1300.44, 77.76),
        JRestriction = 0,
        Requirements = {},
        BlipColor = 'DARK_GREEN',
        BlipDistance = 0,
    }
}

Config.BlipColors = {
    LIGHT_BLUE    = 'BLIP_MODIFIER_MP_COLOR_1',
    DARK_RED      = 'BLIP_MODIFIER_MP_COLOR_2',
    PURPLE        = 'BLIP_MODIFIER_MP_COLOR_3',
    ORANGE        = 'BLIP_MODIFIER_MP_COLOR_4',
    TEAL          = 'BLIP_MODIFIER_MP_COLOR_5',
    LIGHT_YELLOW  = 'BLIP_MODIFIER_MP_COLOR_6',
    PINK          = 'BLIP_MODIFIER_MP_COLOR_7',
    GREEN         = 'BLIP_MODIFIER_MP_COLOR_8',
    DARK_TEAL     = 'BLIP_MODIFIER_MP_COLOR_9',
    RED           = 'BLIP_MODIFIER_MP_COLOR_10',
    LIGHT_GREEN   = 'BLIP_MODIFIER_MP_COLOR_11',
    TEAL2         = 'BLIP_MODIFIER_MP_COLOR_12',
    BLUE          = 'BLIP_MODIFIER_MP_COLOR_13',
    DARK_PUPLE    = 'BLIP_MODIFIER_MP_COLOR_14',
    DARK_PINK     = 'BLIP_MODIFIER_MP_COLOR_15',
    DARK_DARK_RED = 'BLIP_MODIFIER_MP_COLOR_16',
    GRAY          = 'BLIP_MODIFIER_MP_COLOR_17',
    PINKISH       = 'BLIP_MODIFIER_MP_COLOR_18',
    YELLOW_GREEN  = 'BLIP_MODIFIER_MP_COLOR_19',
    DARK_GREEN    = 'BLIP_MODIFIER_MP_COLOR_20',
    BRIGHT_BLUE   = 'BLIP_MODIFIER_MP_COLOR_21',
    BRIGHT_PURPLE = 'BLIP_MODIFIER_MP_COLOR_22',
    YELLOW_ORANGE = 'BLIP_MODIFIER_MP_COLOR_23',
    BLUE2         = 'BLIP_MODIFIER_MP_COLOR_24',
    TEAL3         = 'BLIP_MODIFIER_MP_COLOR_25',
    TAN           = 'BLIP_MODIFIER_MP_COLOR_26',
    OFF_WHITE     = 'BLIP_MODIFIER_MP_COLOR_27',
    LIGHT_YELLOW2 = 'BLIP_MODIFIER_MP_COLOR_28',
    LIGHT_PINK    = 'BLIP_MODIFIER_MP_COLOR_29',
    LIGHT_RED     = 'BLIP_MODIFIER_MP_COLOR_30',
    LIGHT_YELLOW3 = 'BLIP_MODIFIER_MP_COLOR_31',
    WHITE         = 'BLIP_MODIFIER_MP_COLOR_32'
}
