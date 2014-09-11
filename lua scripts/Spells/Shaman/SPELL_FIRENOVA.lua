-- Fire nova fix, all ranks
local SPELL_DATA = {
{1535,8349},
{8498,8502},
{8499,8503},
{11314,11306},
{11315,11307},
{25546,25535},
{25547,25537},
{61649,61650},
{61657,61654}
}

local UNIT_FIELD_SUMMONEDBY = 0x0006 + 0x0008

local TOTEMS_DATA = {17539,30652,30653,30654,2523,3902,3903,3904,7400,7402,15480,31162,31164,31165,5950,6012,7423,10557,15485,31132,31133,
31158,5929,7464,7465,7466,15484,31166,31167,5926,7412,7413,15486,31171,31172,15439}

function Firenova(event, pPlayer, spell)
for i = 1,#SPELL_DATA do
if(spell == SPELL_DATA[i][1])then
	for k,v in pairs(pPlayer:GetInRangeUnits())do
		for l = 1, #TOTEMS_DATA do
			if(TOTEMS_DATA[l] == v:GetEntry() and v:GetUInt64Value(UNIT_FIELD_SUMMONEDBY) == pPlayer)then
				pPlayer:CastSpellAoF(v:GetX(),v:GetY(),v:GetZ(),SPELL_DATA[i][2])
				v:CastSpell(SPELL_DATA[i][2])
			end
		end
	end
end
end
end

RegisterServerHook(10,Firenova)
