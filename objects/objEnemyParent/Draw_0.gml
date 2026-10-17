draw_self()

if global.developerModeActive == true
{
	draw_set_font(fontArial28)
	draw_text(x-50, bbox_top-50, "hp = " +string(hp))
}