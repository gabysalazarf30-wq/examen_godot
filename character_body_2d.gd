extends CharacterBody2D


#git add . git commit -m "Pruebando Examen" git push

const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("arriba") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	if Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
	elif Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
	else:
		velocity.x = 0
	move_and_slide()
	
func _process(delta: float) -> void:
	position = velocity * 2

	
func morir() -> void:
	print("Has muerto")
	get_tree().quit()


func _on_timer_timeout() -> void:
	pass # Replace with function body.
