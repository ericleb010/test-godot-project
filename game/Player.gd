extends KinematicBody2D

const NORMAL: Vector2 = Vector2(0, -1)

export var movement_speed: int = 0
export var jump_speed: int = 0
export var gravity: int = 0

var velocity: Vector2 = Vector2(0, 0)

func _physics_process(delta):
	# Deal with x-axis motion
	var h_speed: int = movement_speed
	var h_velocity: int = 0
	if Input.is_action_pressed("ui_left"):
		h_velocity -= h_speed
	if Input.is_action_pressed("ui_right"):
		h_velocity += h_speed
	velocity.x = h_velocity
	
	# Deal with y-axis motion
	if is_on_floor():
		if Input.is_action_just_pressed("ui_select"):
			velocity.y = -jump_speed
	else:
		velocity.y += gravity
		
	move_and_slide(velocity, NORMAL, false, 4, 0.90)

func add_to_inventory(item):
	pass