if other.poisonCooldownFrame <= 0 and duration > 0
{
	other.poisonCooldownFrame = other.poisonCooldownMaxFrames
	with other
	{
		damageTaken = 20
		event_perform(ev_other, ev_user0);
	}
}
else
{
	other.poisonCooldownFrame -= 1
}