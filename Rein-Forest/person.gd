extends KinematicBody2D

var health
var book_count
var is_dead

var motion = Vector2()

const UP = Vector2(0, -1)
const GRAVITY = 20
const SPEED = 200
const JUMP_HEIGHT = -600

enum Move {
	left = KEY_A
	right = KEY_D
	run = KEY_SHIFT
	jump = KEY_SPACE}

func _ready():
	health = 100
	book_count = 0
	is_dead = false
	pass

func _physics_process(delta):
	_movement()

func _movement() :

	if is_dead:
		return

	motion.y += GRAVITY

	if Input.is_key_pressed(Move.left):
		motion.x = -SPEED
		pass
	elif Input.is_key_pressed(Move.right):
		motion.x = SPEED
	else:
		motion.x = 0

	if is_on_floor():
		if Input.is_key_pressed(Move.jump):
			motion.y = JUMP_HEIGHT
			pass

	motion = move_and_slide(motion, UP)
	pass

func hurt():
	health -= 10
	print(health)

	if(health <= 0):
		_dead()
	pass

func add_book():
	print("Book Added")
	book_count += 1
	pass

func print_stats():
	print("BOOKS RETURNED: ", book_count)
	print("FINAL HEALTH: ", health)

func _dead():
	is_dead = true
	motion = Vector2(0, 0)
	$CollisionShape2D.disabled = true
	$Timer.start()
	pass

func _on_Timer_timeout():
	get_parent().respawn()
	self.queue_free()
	pass # replace with function body
