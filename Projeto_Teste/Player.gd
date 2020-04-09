extends KinematicBody2D


var GRAVITY = 10
var MOVE_SPEED = 10
var JUMP_HEIGHT = 120

func _physics_process(delta):
	var mov = Vector2()
	
	if Input.is_action_pressed("ui_left"):
		mov.x = -10
	if Input.is_action_pressed("ui_right"):
		mov.x = 10
	mov.y -= GRAVITY
	if Input.is_action_just_pressed("ui_up"):
		mov.y = -JUMP_HEIGHT
	
	move_and_slide(mov * MOVE_SPEED)
