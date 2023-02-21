with(other){ //Other is necessary to show that the variable is referring to the player
inv_pokeballs += 1;
}

instance_destroy();

audio_play_sound(snd_item, 0, false);
effect_create_above(ef_firework, x, y, 1, c_black);