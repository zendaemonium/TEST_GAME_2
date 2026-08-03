x = objPLAYER.x+(objPLAYER.dir*35)
y = objPLAYER.y-(35)

if keyboard_check_pressed(ord("Z")){
		active = true
		activeframes = ATTACKDURATION
}
		
if active {
	activeframes-=1
	if activeframes == 0{
		active= false
	}
}
visible = active