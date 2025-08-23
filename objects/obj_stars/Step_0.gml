if global.is_paused{
	exit
}

if not instance_exists(parent_card){
	instance_destroy()
}