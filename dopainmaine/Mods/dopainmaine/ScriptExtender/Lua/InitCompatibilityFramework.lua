modGuid = "36df4fb5-b866-489f-9dc7-a8cb036aff62"
subClassGuid = "3274cbfe-ab33-4082-8451-296ec634c648"

if Ext.Mod.IsModLoaded("67fbbd53-7c7d-4cfa-9409-6d737b4d92a9") then
    local subClasses = {
        khbsd_FarSoul = {
            modGuid = "36df4fb5-b866-489f-9dc7-a8cb036aff62",
            subClassGuid = "3274cbfe-ab33-4082-8451-296ec634c648",
            class = "cleric",
            subClassName = "PainedDomaine"
        }
    }

    local function OnStatsLoaded()
        Mods.SubclassCompatibilityFramework.Api.InsertSubClasses(subClasses)
    end

    Ext.Events.StatsLoaded:Subscribe(OnStatsLoaded)
end 