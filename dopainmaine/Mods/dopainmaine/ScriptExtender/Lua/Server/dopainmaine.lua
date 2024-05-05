function OnStatsLoaded()
    for _, resourceGuid in pairs(Ext.StaticData.GetAll("Race")) do
        Ext.StaticData.Get(resourceGuid, "Race").ExcludedGods = {}
		Ext.StaticData.Get(resourceGuid, "Race").Gods = {}
    end

    for _, resourceGuid in pairs(Ext.StaticData.GetAll("ClassDescription")) do
        Ext.StaticData.Get(resourceGuid, "ClassDescription").HasGod = true
    end
end

Ext.Events.StatsLoaded:Subscribe(OnStatsLoaded)
