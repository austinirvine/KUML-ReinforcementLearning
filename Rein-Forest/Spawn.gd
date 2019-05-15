extends Node2D

var spawn_type = "player"

var scene
var player = preload("res://Characters/person.tscn")
var enemy = preload("res://Characters/bully.tscn")

func _ready():
	spawn_type = self.name
	scene = self

	respawn()
	_on_Timer_timeout()
	pass

func respawn():
	if spawn_type != "enemy spawn":
		var p1 = player.instance()
		scene.add_child(p1)

func _on_Timer_timeout():
	if spawn_type != "player spawn":
		var badGuy = enemy.instance()
		scene.add_child(badGuy)
	pass
