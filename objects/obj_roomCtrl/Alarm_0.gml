switch (room) {
	case rm_stage1: audio_play_sound(snd_stage1, 0, true) break;
	case rm_stage2: audio_play_sound(snd_stage2, 0, true) break;
	case rm_stage3: audio_play_sound(snd_stage3, 0, true) break;
	case rm_stage4: audio_play_sound(snd_stage4, 0, true) break;
	default: alarm_set(1, 210) break;
}