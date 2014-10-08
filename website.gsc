/*#############################################################################################################################################*\
#                                                                                                                                               #
#                                                                                                                                               #
#                                                                                                                                               #
#            _____            _____                    _____                    _____                _____                    _____             #
#           /\    \          /\    \                  /\    \                  /\    \              |\    \                  /\    \            #
#          /::\____\        /::\____\                /::\    \                /::\    \             |:\____\                /::\    \           #
#         /:::/    /       /:::/    /               /::::\    \              /::::\    \            |::|   |               /::::\    \          #
#        /:::/    /       /:::/    /               /::::::\    \            /::::::\    \           |::|   |              /::::::\    \         #
#       /:::/    /       /:::/    /               /:::/\:::\    \          /:::/\:::\    \          |::|   |             /:::/\:::\    \        #
#      /:::/    /       /:::/    /               /:::/__\:::\    \        /:::/__\:::\    \         |::|   |            /:::/__\:::\    \       #
#     /:::/    /       /:::/    /               /::::\   \:::\    \      /::::\   \:::\    \        |::|   |           /::::\   \:::\    \      #
#    /:::/    /       /:::/    /      _____    /::::::\   \:::\    \    /::::::\   \:::\    \       |::|___|______    /::::::\   \:::\    \     #
#   /:::/    /       /:::/____/      /\    \  /:::/\:::\   \:::\    \  /:::/\:::\   \:::\    \      /::::::::\    \  /:::/\:::\   \:::\    \    #
#  /:::/____/       |:::|    /      /::\____\/:::/  \:::\   \:::\____\/:::/  \:::\   \:::\____\    /::::::::::\____\/:::/__\:::\   \:::\____\  #
#  \:::\    \       |:::|____\     /:::/    /\::/    \:::\   \::/    /\::/    \:::\   \::/    /   /:::/~~~~/~~      \:::\   \:::\   \::/    /  #
#   \:::\    \       \:::\    \   /:::/    /  \/____/ \:::\   \/____/  \/____/ \:::\   \/____/   /:::/    /          \:::\   \:::\   \/____/    #
#    \:::\    \       \:::\    \ /:::/    /            \:::\    \               \:::\    \      /:::/    /            \:::\   \:::\    \        #
#     \:::\    \       \:::\    /:::/    /              \:::\____\               \:::\____\    /:::/    /              \:::\   \:::\____\       #
#      \:::\    \       \:::\__/:::/    /                \::/    /                \::/    /    \::/    /                \:::\   \::/    /       #
#       \:::\    \       \::::::::/    /                  \/____/                  \/____/      \/____/                  \:::\   \/____/        #
#        \:::\    \       \::::::/    /                                                                                   \:::\    \            #
#         \:::\____\       \::::/    /                                                                                     \:::\____\           #
#          \::/    /        \::/____/                                                                                       \::/    /           #
#           \/____/          ~~                                                                                              \/____/            #
#                                                                                                                                               #
#                                                                                                                                               #
#                                                                                                                                               #
#                                                       ###################################                                                     #
#                                                       #                                 #                                                     #
#                                                       #   Autor: Luffye                 #                                                     #
#                                                       #                                 #                                                     #
#                                                       #   Xfire: Arschficker555         #                                                     #
#                                                       #   Website: www.EFclan.tk        #                                                     #
#                                                       #                                 #                                                     #
#                                                       #                                 #                                                     #
\*##############################################################################################################################################*/
																															

init()
{
	for(;;)
	{
		level waittill("connected", player);
		player thread Website();
		player thread FB();
	}

}


Website()
{
	self notify( "new_website" );
	self endon( "new_website" );
	self endon( "disconnect" );
	
	if( IsDefined( self.website ) ) 
		self.website Destroy();
	
	self.website = NewClientHudElem(self);
	self.website.x = 7;
	self.website.y = -65;
	self.website.horzAlign = "left";
	self.website.vertAlign = "bottom";
	self.website.alignX = "left";
	self.website.alignY = "middle";
	self.website.alpha = 0;
	self.website.fontScale = 1.4;
	self.website.hidewheninmenu = true;
	self.website.label = &"^0www.^5EFclan^0.tk";
	self.website FadeOverTime(.5);
	self.website.alpha = 1;
}

FB()
{
	self notify( "new_fb" );
	self endon( "new_fb" );
	self endon( "disconnect" );
	
	if( IsDefined( self.fb ) )  
		self.fb Destroy();
	
	self.fb = NewClientHudElem(self);
	self.fb.x = 150;
	self.fb.y = 10;
	self.fb.horzAlign = "left";
	self.fb.vertAlign = "top";
	self.fb.alignX = "left";
	self.fb.alignY = "middle";
	self.fb.alpha = 0;
	self.fb.fontScale = 1.4;
	self.fb.hidewheninmenu = true;
	//self.fb.label = &"^0www.fb.com/^5EliteForceClan";
	self.fb FadeOverTime(.5);
	self.fb.alpha = 1;
}