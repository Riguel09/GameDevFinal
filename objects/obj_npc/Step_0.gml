if(distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 0 && room == rm_level_1){
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "Now that you understand how to listen to my angelic voice... Wait, you are reading, right? Uh... Now that you can read my Shakespearean verses, we can begin your Hero's Journey. I'm running low on space here, so press ENTER for the next life-changing dialogue."
	my_text[1] = "Hum hum... Let me read the document they gave me: 'This game can be hard, and you might feel like you can't beat it, but 13,578 people have already beaten it, so don't lose hope!'"
	my_text[2] = "Now, test what you've learned and jump over that ledge! And one last reminder: every time I finish a dialogue, I won't repeat it. They don't pay me overtime for this kind of stuff..."
	text_box.msg = my_text;
	text_box.page = 0;
}
else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 1 && room == rm_level_1){
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "OH MY GOD!!! You died on the F***** tutorial...Today is gonna be a long day...";
	text_box.msg = my_text;
	text_box.page = 0;
}

else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 0 && room == rm_level_2){
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "Can you believe the audacity of these people?! They called me 'Random NPC'... I have a name! I think I deserve at least some respect for this hellish job!"
	my_text[1] = "It's James, by the way... but I think no one cares..."
	my_text[2] = "Ah, yeah, I should guide you... Do you see the bottomless pit on the lowest platform? That's your exit. So go ahead and do what you gotta do—I believe in you!"
	my_text[3] = "If you die, come talk to me—I’ll have some words of wisdom to lighten your dark day! Just don't die too much, or I’ll lose my patience..."
	text_box.msg = my_text;
	text_box.page = 0;
}
	
else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 1 && room == rm_level_2){
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "Keep going, it's not even that bad!" 
	text_box.msg = my_text;
	text_box.page = 0;
}

else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 2 && room == rm_level_2){
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] ="Did you like the tricks we pulled off? I even helped with some—they were crafted with care!"
	text_box.msg = my_text;
	text_box.page = 0;
}

else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 3 && room == rm_level_2){
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "There are still more to come, but many have faced and conquered the challenges!"
	text_box.msg = my_text;
	text_box.page = 0;
}

else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 4 && room == rm_level_2){
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "This is a test of your spirit. Are you going to give in?"
	my_text[1] = "Why am I speaking like this? You know I have a job, right? And this job requires me to read some preset texts... It's not like I want to do this..."
	text_box.msg = my_text;
	text_box.page = 0;
}

if (global.joke_interaction == true){
	global.joke_fall = false;
}