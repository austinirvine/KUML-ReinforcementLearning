extends Area2D

func _on_Desk_body_entered(body):
	if "Player" == body.name:
		print("Good Game")
		body.print_stats()
		body._dead()
		#get_tree().change_scene("Title Screen.tscn")
