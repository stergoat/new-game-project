extends CharacterBody2D  # Use KinematicBody2D if you're using Godot 3.x

# Speed of the character
var speed = 200

func _physics_process(delta):
	# Create a movement vector based on input
	var movement = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		movement.x += 1
	if Input.is_action_pressed("ui_left"):
		movement.x -= 1
	if Input.is_action_pressed("ui_down"):
		movement.y += 1
	if Input.is_action_pressed("ui_up"):
		movement.y -= 1

	# Normalize the movement vector to maintain consistent speed
	if movement.length() > 0:
		movement = movement.normalized() * speed

	# Move the character using move_and_slide()
	move_and_slide(movement, Vector2.UP)
	
