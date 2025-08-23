if global.is_paused{
	exit
}

// obj_controller STEP 事件
if keyboard_check_pressed(ord("W")){
	var grid_pos = get_grid_position_from_world(mouse_x,mouse_y)
	instance_create_depth(grid_pos.x,grid_pos.y+38,0,obj_normal_mouse)
}
