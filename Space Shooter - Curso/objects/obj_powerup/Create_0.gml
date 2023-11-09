chance	= random(100);

speed = 5
direction = random_range(0, 359);

brilho	= spr_brilho_polvo;

#region Cores do powerUp

if (chance >= 90) {
	cor = c_lime;	
}
else if (chance >= 45) {
	cor = c_purple;
}
else {
	cor = c_blue;	
}

#endregion


