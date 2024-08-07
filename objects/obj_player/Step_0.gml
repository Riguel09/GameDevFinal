if (jumping == false && bouncing == false && !place_meeting(x, y + 10, obj_ground)) {
    falling = true;
}

// Handle falling logic
if (falling == true) {
    vertical_velocity += falling_gravity;
    if (vertical_velocity > falling_max_velocity) vertical_velocity = falling_max_velocity;

    var vertical_check = 10;

    if (vertical_velocity > 0) { // Moving downwards
        if (place_meeting(x, y + vertical_check, obj_ground)) {
            vertical_velocity = 0;
            
            var floor_instance = instance_place(x, y + vertical_check, obj_ground);
            y = floor_instance.y - sprite_height;
            
            falling = false;
            on_floor = true;
        } else if (place_meeting(x, y + vertical_check, obj_enemy)) {
            var enemy_instance = instance_place(x, y + vertical_check, obj_enemy);
            vertical_velocity = -bounce_initial_impulse; // Bounce effect
            bouncing = true;
            bounce_timer = 0;
            
            // Create particles and screen shake effect
			audio_play_sound(snd_bounce, false, false);
            var ps = part_system_create();
            part_particles_create(ps, x, y + 72, global.particle_type, 100);
            screen_shake(5, 30);
            screen_flash();
            instance_destroy(enemy_instance); // Destroy enemy
        }
    } else { // Moving upwards
        if (place_meeting(x, y + vertical_velocity, obj_ground)) {
            vertical_velocity = 0;
            y -= vertical_check; 
        } 
    }
}

// Handle jumping logic
if (on_floor == true) {
    if (keyboard_check_pressed(vk_space)) {
		audio_play_sound(snd_jump, false, false);
        on_floor = false;
        jumping = true;
        vertical_velocity = -jump_initial_inpulse;
    }
}

if (jumping == true) {
    if (keyboard_check(vk_space)) {
        vertical_velocity -= jump_acceleration;
    } else {
        jumping = false;
        falling = true;
    }

    if (vertical_velocity < -jump_max_velocity) vertical_velocity = -jump_max_velocity;

    jump_timer++;

    if (jump_timer > jump_duration) {
        jumping = false;
        falling = true;
        jump_timer = 0;
    }
}

if (bouncing == true) {
    if (bounce_timer < bounce_duration) {
        vertical_velocity -= bounce_acceleration;
        if (vertical_velocity < -bounce_max_velocity) vertical_velocity = -bounce_max_velocity;
        bounce_timer++;
    } else {
        bouncing = false;
        falling = true;
    }
}

// Horizontal movement
facing = 1;
if (keyboard_check(ord("A"))) {
    sprite_index = spr_player_move;
    horizontal_velocity = -4;
    facing = -1;
    image_xscale = facing;
} else if (keyboard_check(ord("D"))) {
    sprite_index = spr_player_move;
    horizontal_velocity = 4;
    facing = 1;
    image_xscale = facing; // Face right
} else {
    horizontal_velocity = 0;
    sprite_index = spr_player_idle;
    image_xscale = facing;
}

// Apply horizontal movement and handle wall collisions
if (place_meeting(x + horizontal_velocity, y, obj_ground)) {
    while (!place_meeting(x + sign(horizontal_velocity), y, obj_ground)) {
        x += sign(horizontal_velocity); // Move until collision
    }
    horizontal_velocity = 0; // Stop movement on collision
}



// Ensure player stays within the room boundaries
if (x < 0) {
    x = 0;
} else if (x > room_width - sprite_width) {
    x = room_width - sprite_width;
}
if (y < 0) {
    y = 0;
} else if (y > room_height - sprite_height) {
    y = room_height - sprite_height;
}

if(place_meeting(x,y,obj_fire) && !dead){
	audio_play_sound(snd_death, false, false);
	var ps = part_system_create();
	part_particles_create(ps, x, y + sprite_height /2, global.particle_type, 100);
	screen_shake(5, 30);
	screen_flash();
	dead = true;
	alarm[0] = 40;
}



// Handle screen shake
if (shake_time < shake_duration) {
    shake_x = random_range(-shake_magnitude, shake_magnitude);
    shake_y = random_range(-shake_magnitude, shake_magnitude);
    shake_time += 1;
} else {
    shake_x = 0;
    shake_y = 0;
    shake_duration = 0;
    shake_magnitude = 0;
    shake_time = 0;
}

// Apply screen shake
camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]) + shake_x, camera_get_view_y(view_camera[0]) + shake_y);