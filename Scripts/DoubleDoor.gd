extends Node3D

const openTime = 3
const lockTime = 10000

var doorOpen = false
var doorLocked = false

@onready var doorAudio = $DoorOpen

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_3d_body_entered(body: Node3D) -> void:
	if doorOpen == false:
		if body.get_name() == "Player":
			$DoubleDoorClosed.visible = false
			$DoubleDoorOpen.visible = true
			doorAudio.play()
			print("player entered door")
