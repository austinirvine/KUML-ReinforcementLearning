extends Area2D

func _on_Book_body_entered(body):
	if "Player" == body.name:
		body.add_book()
		get_parent().respawn()
		queue_free()
