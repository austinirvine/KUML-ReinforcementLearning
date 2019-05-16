extends Node2D

const book = preload("res://Book.tscn")

func _ready():
	_on_Timer_timeout()
	pass

func _on_Timer_timeout():
	var booky = book.instance()
	self.add_child(booky)

func respawn():
	$Timer.start()