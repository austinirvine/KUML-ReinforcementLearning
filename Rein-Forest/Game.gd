extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var buildingBlock = preload("res://scenes/environment/block.tscn")

func _ready():
	var scene = self#get_tree().get_root()
	# Called when the node is added to the scene for the first time.
	# Initialization heres
#	for i in range(10):
#		for j in range(10):
#			var blockNode = buildingBlock.instance()
#			blockNode.set_position(Vector2(i * 64, j * 64))
#			scene.add_child(blockNode)
#			print(blockNode)
#			print(scene)
	pass

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	pass
