local function UpdateRepExpBar(self, event, ...) 
	if ElvUI then 
	x = ElvUIParent:GetWidth()/4
		WhoIsYourDaddy = UpperRepExpBarHolder:GetParent()
		if WhoIsYourDaddy == ElvUIParent then		
			Bar2Height = Titan_Bar__Display_Bar2:GetHeight()
			if Bar2Height == 0 then
				UpperRepExpBarHolder:SetPoint("TOP", Titan_Bar__Display_Bar, "BOTTOM", 0, 0)
				ShowButton:SetPoint("TOP", Titan_Bar__Display_Bar, "BOTTOM", -x, 0)				
			else
				UpperRepExpBarHolder:SetPoint("TOP", Titan_Bar__Display_Bar2, "BOTTOM", 0, 0)
				ShowButton:SetPoint("TOP", Titan_Bar__Display_Bar2, "BOTTOM", -x, 0)				
			end
		end 
	end
end

local SkinTitanPanel = CreateFrame("Frame")
	SkinTitanPanel:RegisterEvent("PLAYER_ENTERING_WORLD")
	SkinTitanPanel:SetScript("OnEvent", function(self, event, addon)
	if IsAddOnLoaded("Skinner") or IsAddOnLoaded("Aurora") then return end
	if not IsAddOnLoaded("Titan") then return end

	-- Top Bar 1
		Titan_Bar__Display_Bar:StripTextures()
		Titan_Bar__Display_Bar:SetTemplate("Default")
	-- Top Bar	2
		Titan_Bar__Display_Bar2:StripTextures()
		Titan_Bar__Display_Bar2:SetTemplate("Default")
	-- Aux Bar 1
		Titan_Bar__Display_AuxBar:StripTextures()
		Titan_Bar__Display_AuxBar:SetTemplate("Default")
	-- Aux Bar 1
		Titan_Bar__Display_AuxBar2:StripTextures()
		Titan_Bar__Display_AuxBar2:SetTemplate("Default")		
	-- Move EXP/Rep bar if ElvUI.
			local BarTwo = _G["Titan_Bar__Display_Bar2"]
			BarTwo:SetScript("OnUpdate", UpdateRepExpBar)
end)