/// @description Become random debris sprite.
var fav = irandom(100);
if (fav <= 33) {
   sprite_index = spr_fx_debris1;
} else if (fav <= 66) {
   sprite_index = spr_fx_debris2;
} else {
   sprite_index = spr_fx_debris3;
}