draw_self()
if not on_click{
	draw_sprite_ext(spr_battlestart_text,0,x,y,1.8,1.8,0,c_white,1)
	image_blend = c_white
}
else{
	draw_sprite_ext(spr_battlestart_text,0,x,y,1.8,1.8,0,c_yellow,1)
	//image_blend = c_yellow
}