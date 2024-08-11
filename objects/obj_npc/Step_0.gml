if(distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 0 && room == rm_level_1){
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "Now that you understand how to listen to my angelical voice. Wait... you are reading, right? Uh... Now that you can read my shakesperian verses we can start your Heroe's Journey. I'm running low on space here press ENTER for the next life-changing dialogue."
	my_text[1] = "Hum Hum... Let me read the document they gave to me 'This game can be hard and you might fell like you can't beat it, but 13,578 people have already beatten it, so don't lose hope!!!'"
	my_text[2] = "Now test what you learned and jump over that ledge!!! And one last reminder every time I finish a dialogue I will not speak it again, they don't pay me for overtime for this kinda stuff..."
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
	my_text[0] = "Can you believe the audacity of these people!!! They called me 'Random NPC'... I have a name!!! I think I deserve at least some respect for this hellish job!!!"
	my_text[1] = "It's James by the way... But I think no one cares..."
	my_text[2] = "Ah, yeah I should guide you... Do you see the bottomless pit on the lowest plataform, there is your exit. So go ahead and do what you gotta do, I believe you!!!"
	my_text[3] = "If you die come talk to me, I will have some words of wisdom to light your dark day!!! Just don't die too much cause I will lose my pacience..."
	text_box.msg = my_text;
	text_box.page = 0;
}
	
else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 1 && room == rm_level_2){
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "Keep on going, it's not even that bad!!!" 
	text_box.msg = my_text;
	text_box.page = 0;
}

else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 2 && room == rm_level_2){
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "Did you like the tricks we made? I even helped with some, they were made with care!!!"
	text_box.msg = my_text;
	text_box.page = 0;
}

else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 3 && room == rm_level_2){
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "There are still more to go, but many have come and conquered the challenges!!!"
	text_box.msg = my_text;
	text_box.page = 0;
}

else if (distance_to_object(obj_player) < interaction_range && keyboard_check_pressed(vk_shift) && text_box == noone && global.death_count == 4 && room == rm_level_2){
	text_box = instance_create_layer(150, room_height - 150, "Instances", obj_text_box);
	my_text[0] = "This is a test of your spirit, are you gonna give in?"
	my_text[1] = "Why am I speaking like this? You know I have job, right? And this job requires me to read some preset texts...It's not like I wanna do this..."
	text_box.msg = my_text;
	text_box.page = 0;
}

if (global.joke_interaction == true){
	global.joke_fall = false;
}