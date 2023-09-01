return {
PlaceObj('ModItemCode', {
	'name', "CTH",
	'CodeFileName', "Code/CTH.lua",
}),
PlaceObj('ModItemCode', {
	'name', "Config",
	'CodeFileName', "Code/Config.lua",
}),
PlaceObj('ModItemCode', {
	'name', "ModOptions",
	'CodeFileName', "Code/ModOptions.lua",
}),
PlaceObj('ModItemCode', {
	'name', "WeaponComponentEffect",
	'CodeFileName', "Code/WeaponComponentEffect.lua",
}),
PlaceObj('ModItemCode', {
	'name', "WeaponComponents",
	'CodeFileName', "Code/WeaponComponents.lua",
}),
PlaceObj('ModItemOptionChoice', {
	'name', "RevisedNotPronePenalty",
	'DisplayName', "Sniper Not Prone Penalty",
	'Help', "Penalty to CTH if sniper shooting not rpone",
	'DefaultValue', "-25",
	'ChoiceList', {
		"-15",
		"-20",
		"-25",
		"-30",
		"-35",
	},
}),
PlaceObj('ModItemOptionChoice', {
	'name', "RevisedPenaltyPerTile",
	'DisplayName', "Penalty Per Tile",
	'Help', "CTH per tile below minum distance",
	'DefaultValue', "-5",
	'ChoiceList', {
		"-3",
		"-4",
		"-5",
		"-6",
		"-7",
	},
}),
PlaceObj('ModItemOptionToggle', {
	'name', "RevisedEnemyAffectedByScopePen",
	'DisplayName', "EnemyScope Penalty",
	'Help', "Disables min range scope penalty for enemy",
	'DefaultValue', true,
}),
}
