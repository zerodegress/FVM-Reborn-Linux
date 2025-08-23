if not global.menu_screen{
	exit
}
draw_self()
draw_sprite_ext(spr_player_levels,0,x + 140 , y + 38,1.3,1.3,0,c_white,1)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(x+290,y+38,"色拉岛（陆）")
draw_text(x+270,y+75,global.player_name)
draw_text(x+260,y+115,"2小时15分钟")
draw_text(x+235,y+152,"不知名冒险家")
draw_set_halign(fa_left)
draw_set_valign(fa_top)