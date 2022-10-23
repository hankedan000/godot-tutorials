extends Control

onready var name_edit := $NameEdit

func _on_ArcadeKeyboard_char_key_pressed(char_key):
	name_edit.text += char_key

func _on_ArcadeKeyboard_ctrl_key_pressed(ctrl_key):
	if ctrl_key == "RUB":
		var new_name = name_edit.text
		new_name.erase(name_edit.text.length()-1,1)
		name_edit.text = new_name
	elif ctrl_key == "END":
		name_edit.text = ""
