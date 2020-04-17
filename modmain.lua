local toggle = true
local keybind = "z"

local function SetOnFinishCallback(workable)
	local OldFinish = workable.SetOnFinishCallback
	workable.SetOnFinishCallback = function(self, fn)
		if workable:GetWorkAction() == GLOBAL.ACTIONS.CHOP then
			self.onfinish = function(inst, chopper)
				fn(inst, chopper)
				local shovel = chopper.components.inventory:FindItem(IsDigTool)
				if shovel ~= nil and not inst:HasTag("burnt") and toggle then
					chopper.components.inventory:Equip(shovel)
				end
			end
		elseif workable:GetWorkAction() == GLOBAL.ACTIONS.DIG then
			self.onfinish = function(inst, digger)
				fn(inst, digger)
				local axe = digger.components.inventory:FindItem(IsChopTool)
				if axe ~= nil and toggle then
					digger.components.inventory:Equip(axe)
				end
			end
		else
			OldFinish(self, fn)
		end
	end
end
			
function IsDigTool(item)
	return item.components.tool and item.components.tool:CanDoAction(GLOBAL.ACTIONS.DIG) or false
end

function IsChopTool(item)
	return item.components.tool and item.components.tool:CanDoAction(GLOBAL.ACTIONS.CHOP) or false
end

AddComponentPostInit("workable", SetOnFinishCallback)

GLOBAL.TheInput:AddKeyUpHandler(keybind:lower():byte(),
	function()
		toggle = not toggle
		print(toggle)
	end
)