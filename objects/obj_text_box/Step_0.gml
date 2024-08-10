if(keyboard_check_pressed(vk_enter)){
	if(page + 1 < array_length_1d(msg)){
		page += 1;
	}
	else{
		page = 0;
		instance_destroy()
	}
}



