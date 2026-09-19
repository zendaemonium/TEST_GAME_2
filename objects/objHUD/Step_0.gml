//tamzi's health decider
if global.characterindex == 0 {
	if global.health == 3 {
		image_index = 0
	}
	if global.health == 2 {
		image_index = 1
	}
	if global.health == 1 {
		image_index = 2
	}
	if global.health == 0 {
		image_index = 3
	}
}

//sekhet's health decider
if global.characterindex == 1 {
	if global.health == 3 {
		image_index = 4
	}
	if global.health == 2 {
		image_index = 5
	}
	if global.health == 1 {
		image_index = 6
	}
	if global.health == 0 {
		image_index = 7
	}
}

//dayan's health decider, though here he has three health rather than 4 (REVISE!)
if global.characterindex == 2 {
	if global.health == 3 {
		image_index = 8
	}
	if global.health == 2 {
		image_index = 9
	}
	if global.health == 1 {
		image_index = 10
	}
	if global.health == 0 {
		image_index = 11
	}
}

//mallaidh's health decider, though here she has three health rather than two (REVISE!)
if global.characterindex == 3 {
	if global.health == 3 {
		image_index = 12
	}
	if global.health == 2 {
		image_index = 13
	}
	if global.health == 1 {
		image_index = 14
	}
	if global.health == 0 {
		image_index = 15
	}
}

if global.health <=0 {
	game_restart()
	//make this go to checkpoint
}