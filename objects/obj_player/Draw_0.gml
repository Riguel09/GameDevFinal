if(dead == false){
	draw_self();
}

if (flash_alpha > 0){
	draw_set_alpha(flash_alpha);
	draw_set_color(c_white);
	draw_rectangle(-100, -100, display_get_width() + 100, display_get_height() + 100, false);
	draw_set_alpha(1);
	flash_alpha -= flash_speed;
}

