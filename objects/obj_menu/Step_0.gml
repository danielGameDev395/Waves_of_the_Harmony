var up=keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))
var down=keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))
var confirm=keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)

if (up) { audio_play_sound(Menu_selector, 0, false); index-- }
if (down) { audio_play_sound(Menu_selector, 0, false); index++ }

if (index<0) { index=array_length(options)-1 }
if (index>array_length(options)-1) { index=0 }

if (confirm && selected=0) {
	selected=1; audio_play_sound(Menu_confirm, 0, false)
	alarm_set(0, audio_sound_length(Menu_confirm)*game_get_speed(gamespeed_fps))
}