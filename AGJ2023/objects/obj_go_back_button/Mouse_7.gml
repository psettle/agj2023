// Go back to control panel room
// Room was already reset when you left it
if room_previous(room) != -1
{
    room_goto_previous();
}