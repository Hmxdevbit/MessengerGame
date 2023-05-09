xspd = 0;
yspd = 0;

move_spd = 1;

sprite[RIGHT] = spr_player_right;
sprite[UP] = spr_player_up;
sprite[LEFT] = spr_player_left;
sprite[DOWN] = spr_player_down;
//sprite_idle[JUMP] = spr_player_kiss;

//idle_delay = 30;
face = DOWN;

//for interaction
interactDist = 4;


//music
bgm = audio_play_sound(Dungeon_BG, 100, true);
audio_sound_loop_start(Dungeon_BG, 17.2);
audio_sound_loop_end(Dungeon_BG, 95.7);

audio_sound_loop(bgm, true);