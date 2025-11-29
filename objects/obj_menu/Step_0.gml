var up=keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))
var down=keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))
var confirm=keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)

if (up) { index-- }
if (down) { index++ }

if (index<0) { index=array_length(options)-1 }
if (index>array_length(options)-1) { index=0 }

if (confirm) {
	switch (index) {
		case 0: room_goto_next() break;
		case 1: game_end() break;
		case 2: room_goto(rm_controls) break;
		case 3: room_goto(rm_credits) break;
	}
}