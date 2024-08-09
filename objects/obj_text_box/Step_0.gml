show_debug_message(page)
if(keyboard_check(vk_enter)){
	if(page + 1 < array_length_1d(msg)){

		page++;
	}
	else{
		instance_destroy()
		page = 0;
	}
}



