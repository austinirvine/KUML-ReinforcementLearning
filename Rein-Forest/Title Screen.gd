extends Node

func _ready():
	$MarginContainer/VBoxContainer/Button.grab_focus()


func _on_Button_pressed():
	get_tree().change_scene("Game.tscn")


func _on_Button2_pressed():
	get_tree().quit()


func _on_Button3_pressed():
	get_tree().change_scene("GameRL.tscn")
