if (jumping == false && bouncing == false && !place_meeting(x, y + 10, obj_ground)) {
    falling = true;
}

// Handle falling logic
if (falling == true) {
	image_speed = 1;
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
        sprite_index = spr_jump; // Set jump sprite
		image_speed = 0;
		image_index = 0;
    }
}

if (jumping == true) {
	if (image_index >= 3) { // If we have reached the 4th frame
        image_speed = 0; // Stop the animation
    } else {
        image_speed = 1; // Keep playing the animation
    }
    if (keyboard_check(vk_space)) {
        vertical_velocity -= jump_acceleration;
    } else {
        jumping = false;
        falling = true;
        sprite_index = spr_fall; // Set fall sprite if not holding space
    }

    if (vertical_velocity < -jump_max_velocity) vertical_velocity = -jump_max_velocity;

    jump_timer++;

    if (jump_timer > jump_duration) {
        jumping = false;
        falling = true;
        jump_timer = 0;
        sprite_index = spr_fall; // Set fall sprite when jump ends
    }
}

if (bouncing == true) {
    if (bounce_timer < bounce_duration) {
        vertical_velocity -= bounce_acceleration;
        if (vertical_velocity < -bounce_max_velocity) vertical_velocity = -bounce_max_velocity;
        bounce_timer++;
        sprite_index = spr_jump; // Set jump sprite during bounce
    } else {
        bouncing = false;
        falling = true;
        sprite_index = spr_fall; // Set fall sprite when bounce ends
    }
}

// Apply horizontal movement and handle wall collisions
if (place_meeting(x + horizontal_velocity, y, obj_ground)) {
    while (!place_meeting(x + sign(horizontal_velocity), y, obj_ground)) {
        x += sign(horizontal_velocity); // Move until collision
    }
    horizontal_velocity = 0; // Stop movement on collision
    if (falling || jumping || bouncing) {
        sprite_index = spr_fall; // Set fall sprite if in the air
    } else {
        sprite_index = spr_idle; // Set idle sprite on ground collision
    }
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

// Horizontal movement
facing = 1;
if (keyboard_check(ord("A"))) {
	if(on_floor){
		sprite_index = spr_right; // Set walk left sprite
	}
    horizontal_velocity = -4;
    facing = -1;
    image_xscale = facing;
} else if (keyboard_check(ord("D"))) {
	if(on_floor){
    sprite_index = spr_right; // Set walk right sprite
	}
    horizontal_velocity = 4;
    facing = 1;
    image_xscale = facing; // Face right
} else {
    horizontal_velocity = 0;
    if (on_floor) {
        sprite_index = spr_idle; // Set idle sprite when standing still
    }
}
/*
if(place_meeting(x,y,obj_fire) && !dead){
    audio_play_sound(snd_death, false, false);
    var ps = part_system_create();
    part_particles_create(ps, x, y + sprite_height /2, global.particle_type, 100);
    screen_shake(5, 30);
    screen_flash();
    dead = true;
    alarm[0] = 40;
    sprite_index = spr_idle; // Set idle sprite on death
}
*/
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

