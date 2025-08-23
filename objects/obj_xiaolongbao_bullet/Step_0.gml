if global.is_paused{
	exit
}
x += move_speed
if x > 2200{
	instance_destroy()
}