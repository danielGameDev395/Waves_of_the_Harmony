if (!instance_exists(target)) { exit; }

cameraX=camera_get_view_x(view_camera[0])
cameraY=camera_get_view_y(view_camera[0])

cameraX=target.x-view_width/2
cameraY=target.y-view_height/2

cameraX=clamp(cameraX, 0, room_width-view_width)
cameraY=clamp(cameraY, 0, room_height-view_height)

cameraX=lerp(camera_get_view_x(view_camera[0]), cameraX, interpolate)
cameraY=lerp(camera_get_view_y(view_camera[0]), cameraY, interpolate)

camera_set_view_pos(view_camera[0], cameraX, cameraY)