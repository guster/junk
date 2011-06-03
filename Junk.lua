local f = CreateFrame("Frame")
f:RegisterEvent("MERCHANT_SHOW")
f:SetScript("OnEvent", function ()
	for bag = 0, NUM_BAG_SLOTS do
		for slot = 0, GetContainerNumSlots(bag) do
			local link = GetContainerItemLink(bag, slot)
			
			if link then
			  local _, _, quality = GetItemInfo(link)
			  
			  if quality == 0 then UseContainerItem(bag, slot) end
		  end
		end
	end
end)
