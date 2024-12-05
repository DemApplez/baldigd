extends CharacterBody3D


const SPEED = 2.0

var cameraSensitivity = 0.005

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

# This function handles the camera rotation
func _input(event) -> void:
	if event is InputEventMouseMotion:
		self.rotate_y(-event.relative.x * cameraSensitivity)

func _physics_process(delta: float) -> void:
	pass
	# Add the gravity.
	# if not is_on_floor():
		# velocity += get_gravity() * delta

	# Handle jump.

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir := Input.get_vector("player_left", "player_right", "player_forward", "player_backward")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()
