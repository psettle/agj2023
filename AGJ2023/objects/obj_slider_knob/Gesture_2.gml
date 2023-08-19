/// @description Insert description here
// You can write your code in this editor
drag_offset_x = x - event_data[?"posX"];
drag_offset_y = y - event_data[?"posY"];

scrape_sound = audio_play_sound(snd_slider_scrape, 10, true);