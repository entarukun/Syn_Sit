---$$$$$$\ $$\     $$\ $$\   $$\  $$$$$$\   $$$$$$\  $$$$$$$\  $$$$$$\ $$$$$$$\ $$$$$$$$\  $$$$$$\  
--$$  __$$\\$$\   $$  |$$$\  $$ |$$  __$$\ $$  __$$\ $$  __$$\ \_$$  _|$$  __$$\\__$$  __|$$  __$$\ 
--$$ /  \__|\$$\ $$  / $$$$\ $$ |$$ /  \__|$$ /  \__|$$ |  $$ |  $$ |  $$ |  $$ |  $$ |   $$ /  \__|
--\$$$$$$\   \$$$$  /  $$ $$\$$ |\$$$$$$\  $$ |      $$$$$$$  |  $$ |  $$$$$$$  |  $$ |   \$$$$$$\  
---\____$$\   \$$  /   $$ \$$$$ | \____$$\ $$ |      $$  __$$<   $$ |  $$  ____/   $$ |    \____$$\ 
--$$\   $$ |   $$ |    $$ |\$$$ |$$\   $$ |$$ |  $$\ $$ |  $$ |  $$ |  $$ |        $$ |   $$\   $$ |
--\$$$$$$  |   $$ |    $$ | \$$ |\$$$$$$  |\$$$$$$  |$$ |  $$ |$$$$$$\ $$ |        $$ |   \$$$$$$  |
---\______/    \__|    \__|  \__| \______/  \______/ \__|  \__|\______|\__|        \__|    \______/ 
fx_version 'cerulean'
lua54 'yes'
game 'gta5'

dependency 'ox_lib'


ui_page 'html/index.html'
shared_scripts {
	'@ox_lib/init.lua',
}
client_scripts{
	'client/client.lua',
	'client/utils.lua',
	
	'client/lean.lua',
	'client/sitanywhere.lua',


	'config.lua',
	'customize_seats.lua',
	'polyseats.lua',

	'client/debug.lua',
}
files {
	'html/index.html',
	'html/jquery.js',
	'html/init.js',
}
escrow_ignore {
	'html/index.html',
	'html/jquery.js',
	'html/init.js',
	'client/client.lua',
	'client/utils.lua',
	'client/lean.lua',
	'client/sitanywhere.lua',
	'client/debug.lua',
	'config.lua',
	'customize_seats.lua',
	'polyseats.lua',
  }

