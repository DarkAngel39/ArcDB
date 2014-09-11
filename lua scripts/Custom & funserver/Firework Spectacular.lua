 --[[
###############################
Original release by DarkAngel39
###############################
 ]]--
local START = 0
local NPC_CONTROLLER = 100001
local spell_data = {26344,26345,26346,26347,26348,26349,26351,26352,26353,26354,26355,26356,64885,62223,62082,62083,62084,62077,62075,62074,62086,30161}

function OnLoad(pUnit, event)
if(START == 1)then
	pUnit:RegisterAIUpdateEvent(500)
end
end

function AIUpdate(pUnit, event)
if(pUnit == nil)then
	pUnit:RemoveAIUpdateEvent()
end
if(START == 1)then
	local cluster = math.random(1,4)
	if(cluster == 1)then
		pUnit:CastSpell(spell_data[math.random(1,12)])
		pUnit:CastSpell(spell_data[math.random(1,12)])
		pUnit:CastSpell(spell_data[math.random(1,12)])
		pUnit:CastSpell(spell_data[math.random(1,12)])
	elseif(cluster == 2)then
		pUnit:CastSpell(spell_data[math.random(1,12)])
	elseif(cluster == 3)then
		local spell = math.random(1,12)
		pUnit:CastSpell(spell_data[spell])
		pUnit:CastSpell(spell_data[spell])
		pUnit:CastSpell(spell_data[spell])
		pUnit:CastSpell(spell_data[spell])
	elseif(cluster == 4)then
		pUnit:CastSpell(spell_data[math.random(13,22)])
	end
elseif(START == 1)then
	pUnit:RemoveAIUpdateEvent()
end
pUnit:ModifyAIUpdateEvent(math.random(1500,4500))
end

function OnMessage(event, pPlayer, Message, Type, Language, Misc)
if(pPlayer:IsGm())then
	if(Message == "@STARTF")then
		if(START == 0)then
			START = 1
			for k,v in pairs(GetPlayersInWorld())do
				for k,l in pairs(v:GetInRangeUnits())do
					if(l and l:GetEntry() == NPC_CONTROLLER)then
						l:RegisterAIUpdateEvent(500)
					end
				end
			end
		else
			START = 0
		end
	end
end
end

RegisterServerHook(16, OnMessage)
RegisterUnitEvent(NPC_CONTROLLER,18,OnLoad)
RegisterUnitEvent(NPC_CONTROLLER,21,AIUpdate)
