if Holo.Options:GetValue("Base/Hud") then
	Hooks:PostHook(HUDSuspicion, "init", "HoloInit", function(self)
		self:UpdateHolo()
		Holo:AddUpdateFunc(callback(self, self, "UpdateHolo"))
	end)
	function HUDSuspicion:UpdateHolo()
		self._suspicion_panel:set_center(self._suspicion_panel:parent():w() / 2, self._suspicion_panel:parent():h() / 2)
		Holo:SetBlendMode(self._suspicion_panel)
	end
end