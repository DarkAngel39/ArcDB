local text_data = {
{32641,{"Our friendship is OVER!",12, 6},{"Oh, I see how it is... You're gonna do me like that, eh?",12,0},
{"Hey, yea, I've always wanted to be stranded somewhere.",12,0},{"You're just gonna leave me here? How am I supposed to get home?",12,0}},
{32642,{"Really, mon? Just like dat you be leavin' Mojodishu behind?",12, 1},{"Be dat way den!",12,0},
{"Dis bad mojo what you doin'. Don't say Mojodishu didn't warn ya!",12,0}},
{32638,{"Hakmud cannot work under these conditions! Goodbye!",12,0},{"I thought we were friend, buddy! You leave Hakmud stranded?",12,0},
{"Thanks, buddy! Thanks for nothing!",12,0},{"What is Hakmud supposed to do now, buddy?",12,0},{"Why do you treat Hakmud like this, buddy?",12,0}},
{32639,{"Goodbye! You were Gnimo's best friend ever!",12,0},{"Nobody loves Gnimo...",12,0, "Gnimo <Adventurous Tinker>",33019},
{"Time for Gnimo to shut down.",12,0, "Gnimo <Adventurous Tinker>",33021}};
};

function OnLeaveVehicle(pUnit)
for i = 1,#text_data do
	if(pUnit:GetEntry() == text_data[i][1])then
		local tables = #text_data[i]
		pUnit:SendChatMessage(text_data[i][math.random(2,tables)][2],0,text_data[i][math.random(2,tables)][1])
		if(text_data[i][math.random(2,tables)][3] ~= 0)then
			pUnit:Emote(text_data[i][math.random(2,tables)][3],3000)
		end
		pUnit:Despawn(2000,0)
	end
end
end

for i = 1,#text_data do
RegisterUnitEvent(text_data[i][1],25,OnLeaveVehicle)
end
