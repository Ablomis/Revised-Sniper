PlaceObj('WeaponComponentEffect', {
	Comment = "Increase accuracy",
	Description = "Increases accuracy at medium range" ,
    ModificationType = "Subtract",
	Parameters = {
        PlaceObj('PresetParamNumber', {
			'Name', "min_dist",
			'Value', 10,
			'Tag', "<min_dist>",
		}),
        PlaceObj('PresetParamNumber', {
			'Name', "bonus_cth",
			'Value', 20,
			'Tag', "<bonus_cth>",
		}),
    },
	group = "Aiming",
	id = "x5ScopeEffect",
})

PlaceObj('WeaponComponentEffect', {
	Comment = "Increase accuracy",
	Description = "Increases accuracy at medium range" ,
    ModificationType = "Subtract",
	Parameters = {
        PlaceObj('PresetParamNumber', {
			'Name', "min_dist",
			'Value', 15,
			'Tag', "<min_dist>",
		}),
        PlaceObj('PresetParamNumber', {
			'Name', "bonus_cth",
			'Value', 30,
			'Tag', "<bonus_cth>",
		}),
    },
	group = "Aiming",
	id = "x10ScopeEffect",
})

PlaceObj('WeaponComponentEffect', {
	Comment = "Increase accuracy",
	Description = "Increases accuracy at medium range" ,
    ModificationType = "Subtract",
	Parameters = {
        PlaceObj('PresetParamNumber', {
			'Name', "min_dist",
			'Value', 5,
			'Tag', "<min_dist>",
		}),
        PlaceObj('PresetParamNumber', {
			'Name', "bonus_cth",
			'Value', 10,
			'Tag', "<bonus_cth>",
		}),
    },
	group = "Aiming",
	id = "ACOGScopeEffect",
})