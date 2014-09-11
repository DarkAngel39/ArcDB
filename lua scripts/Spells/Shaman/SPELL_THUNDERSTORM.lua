local SPELL_DATA = {
{51490,438}, -- rank 1
{59156,2023}, -- rank 2
{59158,11903}, -- rank 3
{59159,17531} -- rank 4
}

function Thunderstorm(spellIndex, pSpell)
for i = 1,#SPELL_DATA do
	if(SPELL_DATA[i][1] == pSpell)then
		local caster = pSpell:GetCaster()
		caster:CastSpell(SPELL_DATA[i][2])
	end
end
end

for i = 1,#SPELL_DATA do
RegisterDummySpell(SPELL_DATA[i][1],Thunderstorm)
end
