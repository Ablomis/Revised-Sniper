PlaceObj('ChanceToHitModifier', {
	CalcValue = function (self, attacker, target, body_part_def, action, weapon1, weapon2, lof, aim, opportunity_attack, attacker_pos, target_pos)
		local dist = attacker:GetDist(target)/1000
		local cth_bonus = 0
        local diff

        if IsPlayerEnemy(attacker) and not RevisedSniperConfigValues.EnemyAffectedByScopePen then return false, 0 end

		if(weapon1:HasComponent("x5ScopeEffect")) then
			if(dist <= GetComponentEffectValue(weapon1, "x5ScopeEffect", "min_dist")) then
                diff = (GetComponentEffectValue(weapon1, "x5ScopeEffect", "min_dist")-dist)
			else
				--cth_bonus = GetComponentEffectValue(weapon1, "x5ScopeEffect", "cth_bonus")
                return false, 0
			end
			return true, cth_bonus
		elseif (weapon1:HasComponent("x10ScopeEffect")) then
			if(dist <= GetComponentEffectValue(weapon1, "x10ScopeEffect", "min_dist")) then
				diff = (GetComponentEffectValue(weapon1, "x10ScopeEffect", "min_dist")-dist)
			else
				--cth_bonus = GetComponentEffectValue(weapon1, "x10ScopeEffect", "cth_bonus")
                return false, 0
			end
			return true, cth_bonus
		elseif (weapon1:HasComponent("ACOGScopeEffect")) then
			if(dist <= GetComponentEffectValue(weapon1, "ACOGScopeEffect", "min_dist")) then
				diff = (GetComponentEffectValue(weapon1, "ACOGScopeEffect", "min_dist")-dist)
			else
				--cth_bonus = GetComponentEffectValue(weapon1, "ACOGScopeEffect", "cth_bonus")
                return false, 0
			end		
		else
			return false, 0
		end
        cth_bonus = RevisedSniperConfigValues.PenaltyPerTile * diff
        return true, cth_bonus
	end,
	group = "Default",
	display_name='Scope Minimum Range',
	id = "SniperScopeMinimumRange",
})

PlaceObj('ChanceToHitModifier', {
	CalcValue = function (self, attacker, target, body_part_def, action, weapon1, weapon2, lof, aim, opportunity_attack, attacker_pos, target_pos)
		if not IsPlayerEnemy(attacker) and IsKindOf(weapon1, "SniperRifle") and not (attacker.stance =='Prone') then
			return true, RevisedSniperConfigValues.NotPronePenalty
		end
		
		return false, 0
	end,
	group = "Default",
	display_name='Not prone',
	id = "WeaponNotDeployed",
}) 
