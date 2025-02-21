/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_game_font);
draw_text(10,10,"Perfect matches: "+string(cupid.number_perfect_matches));
draw_text(10,60,"Good matches: "+string(cupid.number_good_matches));
draw_text(10,110,"Poor matches: "+string(cupid.number_poor_matches));
draw_text(10,160,"Terrible matches: "+string(cupid.number_terrible_matches));
draw_text(10,210,"MIRACLE matches: "+string(cupid.number_miracle_matches));

draw_text(10,210,"FOREVER SINGLE: "+string(cupid.total_number_single_ppl));