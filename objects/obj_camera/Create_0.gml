view_enabled=true
view_visible[0]=true

cam_scale=2

view_width=global.width/cam_scale
view_height=global.height/cam_scale

camera_set_view_size(view_camera[0], view_width, view_height)
camera_set_view_pos(view_camera[0], 0, 0)

target=obj_player
interpolate=0.05