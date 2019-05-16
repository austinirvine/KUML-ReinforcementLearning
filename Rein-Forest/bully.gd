extends KinematicBody2D

var can_delete
var motion = Vector2()

const UP = Vector2(0, -1)
const GRAVITY = 20
const SPEED = 100
const JUMP_HEIGHT = -200

func _ready():
	var playerNode = ("../player spawner/Player")
	#playerNode.enemiesList.append(self)
	can_delete = false
	pass

func _physics_process(delta):
	_movement()

func _movement() :
	motion.y += GRAVITY

	motion.x = -SPEED

	if is_on_floor():
		can_delete = true

	if not is_on_floor() and can_delete:
		self.queue_free()
		pass

	motion = move_and_slide(motion, UP)

	if get_slide_count() > 0:
		for i in range(get_slide_count()):
			if "Player" in get_slide_collision(i).collider.name:
				get_slide_collision(i).collider.hurt()
	pass