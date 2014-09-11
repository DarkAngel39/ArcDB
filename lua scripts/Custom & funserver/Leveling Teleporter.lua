 --[[
###############################
Original release by DarkAngel39
###############################
 ]]--
local ITEM_ID = 23567
 -- Change in the table rows lenght will cause errors if done incorrectly.
local data = {
{10,"Alterac Mountains",0,953.69,-435.74,138.98,3.711,0,29,35,-1},
{11,"Arathi Highlands",0,-907.865,-3534.24,84.7878,0,0,30,36,-1},
{12,"Badlands",0,-6363.81,-3332.93,242.129,4.028,0,35,42,-1},
{13,"Blasted Lands",0,-11204.5,-2730.61,15.8972,0,0,54,58,-1},
{14,"Burning Steppes",0,-8208.804,-2584.7314,133.729,0.34164,0,52,56,-1},
{15,"Deadwind Pass",0,-10435.4,-1809.28,101,0,0,51,55,-1},
{16,"Dun Morogh",0,-5660.33,755.299,390.605,0,0,1,10,0},
{17,"Duskwood",0,-10517,-1158.39,40.0542,0,0,21,30,0},
{18,"Eastern Plaguelands",0,2280.17,-5298.35,85.163,1.794,0,54,60,-1},
{19,"Elwynn Forest",0,-9465.58,16.8472,66.921,0,0,1,10,0},
{20,"Hillsbrad Foothill",0,-852.854,-576.712,21.0293,0,0,20,30,-1},
{21,"Loch Modan",0,-4939.1,-3423.74,306.595,0,0,10,18,0},
{22,"Redridge Mountains",0,-9219.37,-2149.94,71.606,0,0,16,23,0},
{23,"Searing Gorge",0,-7176.63,-937.667,171.206,0,0,45,50,-1},
{24,"Stranglethorn Vale",0,-11634.8,-54.0697,14.4439,0,0,30,45,-1},
{25,"Silverpine Forest",0,511.536,1638.63,121.417,0,0,10,16,1},
{26,"Swamp of Sorrows",0,-10384.778,-2651.226,22.1,4.585144,0,35,42,-1},
{27,"The Hinterlands",0,171.3729,-2297.92,103.95,4.906,0,42,49,-1},
{28,"Tirisfal Glades",0,2018.48,20.024,34.77,0.0063,0,1,10,1},
{29,"Westfall",0,-10645.9,1179.06,49.1781,0,0,10,16,0},
{30,"Wetlands",0,-4086.36,-2610.95,47.0143,0,0,20,30,0},
{31,"Western Plaguelands",0,1676.98,-1360.22,70.78,5.93,0,50,55,-1},
{32,"Ashenvale",1,3469.43,847.62,6.36476,0,1,19,30,0},
{33,"Azshara",1,2717.1,-5968.91,107.4,0,1,48,54,-1},
{34,"Barrens",1,90.1003,-1943.44,80.4727,0,1,10,20,1},
{35,"Darkshore",1,6207.5,-152.833,80.8185,0,1,1,10,0},
{36,"Desolace",1,-93.1614,1691.15,90.0649,0,1,30,40,-1},
{37,"Dustwallow Marsh",1,-3463.26,-4123.13,18.1043,0,1,35,42,-1},
{38,"Durotar",1,341.42,-4684.7,31.9493,0,1,1,10,1},
{39,"Felwood",1,5483.9,-749.881,335.621,0,1,50,54,-1},
{40,"Feralas",1,-4458.93,243.415,65.6136,0,1,41,48,-1},
{41,"Moonglade",1,7999.68,-2670.2,512.2,0,1,1,80,-2},
{42,"Mulgore",1,-1840.75,-456.561,-7.845,0,1,1,10,1},
{43,"Silithus",1,-7423.88,1003.92,1.01076,3.32144,1,55,60,-1},
{44,"Stonetalon Mountains",1,1145.85,664.812,143,0,1,17,24,-1},
{45,"Tanaris",1,-7373.69,-2950.2,11.7598,0,1,42,48,-1},
{46,"Teldrassil",1,10708.8,762.092,1322.37,0,1,1,10,0},
{47,"Thousand Needles",1,-4932.53,-1596.05,85.8157,0,1,26,35,-1},
{48,"Un'goro Crater",1,-7932.49,-2139.61,-229.728,0,1,48,54,-1},
{49,"Winterspring",1,6107.62,-4181.6,853.322,0,1,54,59,-1},
{50,"Hellefire Peninsula",530,-247.451,940.898,85.3784,0,2,58,63,-1},
{51,"Shadowmoon Valley",530,-2848,3190,9,0,2,67,70,-1},
{52,"Netherstorm",530,2280.68,2520.75,116.278,0,2,67,70,-1},
{53,"Terokkar Forest",530,-1177,5336,31,0,2,62,65,-1},
{54,"Zangramarsh",530,30.4181,6983.48,149.681,0,2,60,64,-1},
{55,"Nagrand",530,-526,8440,48,0,2,64,67,-1},
{56,"Blade's Edge Mountains",530,1114,7091,124,0,2,65,68,-1},
{57,"Ghostlands",530,7880,-6193,22,0,0,10,20,1},
{58,"Eversong Woods",530,9173.678,-7097.63,21.47,2.33,0,1,10,1},
{59,"Azuremyst Isle",530,-4020.48,-13783.3,74.9001,0,1,1,10,0},
{60,"Bloodmyst Isle",530,-2721.68,-12208.9,10.0882,0,1,10,20,0},
{61,"Isle of Quel'Danas",530,13001.9,-6907.46,9.56139,0,0,70,71,-1},
{62,"Howling Fjord",571,1267.69,-4062.03,143.187,0,3,68,72,-1},
{63,"Borean Tundra",571,3008.48,5290.83,59.7553,0,3,68,72,-1},
{64,"Dragonblight",571,4155.35,344.484,64.7376,0,3,71,74,-1},
{65,"Grizzly Hills",571,4027.19,-3771.74,476.593,0,3,73,75,-1},
{66,"Zul'Drak",571,5520.02,-3602.05,362.706,0,3,74,77,-1},
{67,"Crystalsong Forest",571,5578.79,-37.3206,150.171,0,3,74,76,-1},
{68,"Scholazar Basin",571,5574.91,4754.57,-121.906,0,3,75,78,-1},
{69,"Storm Peaks",571,7514.56,-1037.38,466.844,0,3,76,80,-1},
{70,"Icecrown",571,7105.61,2091.7,622.529,0,3,77,80,-1},
{71,"Wintergrasp (PvP Zone)",571,4611.73,2848.31,396.897,0,3,78,80,-1}
}
 -- Do not edit under this unless you really know what are you doing.
function OnGossip(item, event, pPlayer)
item:GossipCreateMenu(50000, pPlayer, 0)
local level = pPlayer:GetLevel()
local team = pPlayer:GetTeam()
if(level < 80)then
	for i = 1,#data do
		if(data[i][11]==-1 or data[i][11]==team)then
			if(level < data[i][9] and level >= data[i][9]-1)then
				item:GossipMenuAddItem(2,"|c00FF0000"..data[i][2].."",data[i][1],0)
			elseif(level >= data[i][9] and level <= data[i][10])then
				item:GossipMenuAddItem(2,"|cFFFFA500"..data[i][2].."",data[i][1],0)
			elseif(level > data[i][10] and level <= data[i][10]+1)then
				item:GossipMenuAddItem(2,"|CFF00FF00"..data[i][2].."",data[i][1],0)
			end
		elseif(data[i][11]==-2 and pPlayer:GetPlayerClass() == "Druid")then
			item:GossipMenuAddItem(2,data[i][2],data[i][1],0)
		end
	end
else
	item:GossipMenuAddItem(7, "|cFF0000FF Eastern Kingdoms", 1, 0)
	item:GossipMenuAddItem(7, "|cFF0000FF Kalimdor", 2, 0)
	item:GossipMenuAddItem(7, "|cFF0000FF Outland", 3, 0)
	item:GossipMenuAddItem(7, "|cFF0000FF Northrend", 4, 0)
end
item:GossipSendMenu(pPlayer)
end

function OnSelect(item, event, pPlayer, id, intid, code)
local team = pPlayer:GetTeam()
if(intid >= 10)then
	for i = 1,#data do
		if(intid == data[i][1])then
			pPlayer:Teleport(data[i][3],data[i][4],data[i][5],data[i][6],data[i][7])
			pPlayer:GossipComplete()
		end
	end
elseif(intid <= 4 and intid >= 1)then
	item:GossipCreateMenu(50000, pPlayer, 0)
	for i = 1,#data do
		if(data[i][8] == intid - 1 and (data[i][11]==-1 or data[i][11]==team or data[i][11]==-2))then
			item:GossipMenuAddItem(2,data[i][2],data[i][1],0)
		end
	end
	item:GossipMenuAddItem(7, "[BACK]", 5, 0)
	item:GossipSendMenu(pPlayer)
elseif(intid == 5)then
	item:GossipCreateMenu(50000, pPlayer, 0)
	item:GossipMenuAddItem(7, "|cFF0000FF Eastern Kingdoms", 1, 0)
	item:GossipMenuAddItem(7, "|cFF0000FF Kalimdor", 2, 0)
	item:GossipMenuAddItem(7, "|cFF0000FF Outland", 3, 0)
	item:GossipMenuAddItem(7, "|cFF0000FF Northrend", 4, 0)
	item:GossipSendMenu(pPlayer)
end
end

RegisterItemGossipEvent(ITEM_ID,1,OnGossip)
RegisterItemGossipEvent(ITEM_ID,2,OnSelect)
