if FirstLoad and not table.find(ModsLoaded, 'id', 'dfvQ4b') then
    WeaponComponents["LROptics"].ModificationEffects[#WeaponComponents["LROptics"].ModificationEffects+1] = "x5ScopeEffect"
    WeaponComponents["LROpticsAdvanced"].ModificationEffects[#WeaponComponents["LROpticsAdvanced"].ModificationEffects+1] = "x10ScopeEffect"
    WeaponComponents["ScopeCOGQuick"].ModificationEffects[#WeaponComponents["ScopeCOGQuick"].ModificationEffects+1] = "ACOGScopeEffect"
    WeaponComponents["ScopeCOG"].ModificationEffects[#WeaponComponents["ScopeCOG"].ModificationEffects+1] = "ACOGScopeEffect"

    g_PresetParamCache[WeaponComponentEffects.x5ScopeEffect] = { min_dist = 10, bonus_cth = 25}
    g_PresetParamCache[WeaponComponentEffects.x10ScopeEffect] = { min_dist = 15, bonus_cth = 35}
    g_PresetParamCache[WeaponComponentEffects.ACOGScopeEffect] = { min_dist = 5, bonus_cth = 15}
end