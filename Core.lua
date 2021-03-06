Core = AceLibrary("AceAddon-2.0"):new("AceEvent-2.0")
local AuroraCouncil = AuroraCouncil:Export();

function Core:OnInitialize()
end

function Core:OnEnable()
    AuroraCouncil:ShowStartupMessage();
    self:RegisterEvent("CHAT_MSG_ADDON");
    self:RegisterEvent("LOOT_OPENED");
    self:RegisterEvent("LOOT_CLOSED");
    AuroraCouncil.Init();
end

function Core:OnDisable()
end

function Core:LOOT_OPENED()
    AuroraCouncil:LootOpened();
end

function Core:LOOT_CLOSED()
    AuroraCouncil:LootClosed();
end

function Core:CHAT_MSG_ADDON(prefix, message, _, sender)
    AuroraCouncil:ChatMsgAddon(prefix, message, sender);
end