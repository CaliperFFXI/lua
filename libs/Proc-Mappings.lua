procs = {

['Dagger'] = 		{red="Wind - Cyclone | Dark - Energy Drain"},
['Sword'] =			{red="Fire - Red Lotus Blade | Light - Seraph Blade"},
['GreatSword'] =	{red="Ice - FreezeBite"},
['Scythe'] =		{red="Dark - Shadow of Death"},
['Polearm'] = 		{red="Lightning - Raiden Thrust"},
['Katana'] =		{red="Dark - Blade: Ei"},
['GreatKatana'] =	{red="Wind - Tachi: Jinpu | Light - Tachi: Koki"},
['Club'] =			{red="Light - Seraph Strike"},
['Staff'] =			{red="Earth - Earth Crusher | Light - Sunburst"},

}

function display_proc_info(weapon)
	local proc_info = procs[weapon].red
	if proc_info then
		add_to_chat(175, proc_info)
	end
end