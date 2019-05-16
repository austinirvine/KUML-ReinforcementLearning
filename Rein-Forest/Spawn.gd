extends Node2D

var spawn_type = "player"

var scene
const player = preload("res://Characters/person.tscn")
const enemy = preload("res://Characters/bully.tscn")

func _ready():
	spawn_type = self.name
	scene = self

	_on_PTimer_timeout()
	_on_Timer_timeout()
	pass

func respawn():
	$PTimer.start()

func _on_Timer_timeout():
	if spawn_type != "player spawn":
		var badGuy = enemy.instance()
		scene.add_child(badGuy)
	pass


func _on_PTimer_timeout():
	if spawn_type != "enemy spawn":
		var p1 = player.instance()
		scene.add_child(p1)
