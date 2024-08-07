

var player = instance_nearest(x, y, obj_player);

if (player != noone) {
    // Check if the target player is close to the current camera height
    var cam_y = camera_get_view_y(view_camera[0]);
    var target_y = player.y - camera_get_view_height(view_camera[0]) / 2;

    if (abs(cam_y - target_y) > camera_threshold) {
        // Move the camera towards the target player's height
        var new_cam_y = lerp(cam_y, target_y, camera_speed);

        // Ensure the camera doesn't go out of room boundaries
        var view_height = camera_get_view_height(view_camera[0]);
        new_cam_y = clamp(new_cam_y, 0, room_height - view_height);

        camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), new_cam_y);
    }
}

