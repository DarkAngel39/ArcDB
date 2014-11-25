local vendordata = {
{33307,14456,2781,0}, -- Corporal Arthur Flew <Stormwind Quartermaster>
{33310,14457,2780,0}, -- Derrick Brindlebeard <Ironforge Quartermaster>\
{33657,14461,2778,0}, -- Irisee <Exodar Quartermaster>
{33650,14462,2779,0}, -- Rillie Spindlenut <Gnomeregan Quartermaster>
{33653,14463,2777,0}, -- Rook Hawkfist <Darnassus Quartermaster>
{33556,14458,0,2786}, -- Doru Thunderhorn <Thunder Bluff Quartermaster>
{33555,14459,0,2787}, -- Eliza Killian <Undercity Quartermaster>
{33553,14460,0,2783}, -- Freka Bloodaxe <Orgrimmar Quartermaster>
{33554,14464,0,2784}, -- Samamba <Sen'jin Quartermaster>
{33557,14465,0,2785}, -- Trellis Morningsun <Silvermoon Quartermaster>
{34885,14661,2817,2816}; -- Dame Evniki Kapsalis <Crusader's Quartermaster>
};

function OnGossip(pUnit, event, pPlayer)
for i = 1,#vendordata do
	if(pUnit:GetEntry() == vendordata[i][1])then
		if(vendordata[i][3+pPlayer:GetTeam()] ~= 0 and pPlayer:HasAchievement(vendordata[i][3+pPlayer:GetTeam()]))then
			pPlayer:SendVendorWindow(pUnit)
		else
			pUnit:GossipCreateMenu(vendordata[i][2], pPlayer, 0)
			pUnit:GossipSendMenu(pPlayer)
		end
	end
end
end

for l = 1,#vendordata do
RegisterUnitGossipEvent(vendordata[l][1],1,OnGossip)
end
