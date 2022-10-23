extends GridContainer

signal char_key_pressed(char_key)
signal ctrl_key_pressed(ctrl_key)

func _ready():
	for c in get_children():
		c.connect("pressed",self,"_on_Key_pressed",[c])
		
	$Key.grab_focus()

func _on_Key_pressed(button):
	if button.text == "RUB":
		emit_signal("ctrl_key_pressed",button.text)
	elif button.text == "END":
		emit_signal("ctrl_key_pressed",button.text)
	else:
		emit_signal("char_key_pressed",button.text)
