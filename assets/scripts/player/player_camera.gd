class_name PlayerCamera
extends Node3D


const BASE_SENSITIVITY: float = 1.25
const VERTICAL_LOOK_LIMIT: float = deg_to_rad(80)

@onready var player: Node3D = $".."


func _ready():	
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		_rotate_camera(event.relative)


func _rotate_camera(mouse_delta: Vector2) -> void:
	# Horizontal rotation
	var sensitivity: float = 0.000125 * pow(BASE_SENSITIVITY, GlobalVariables.get_camera_sensitivity())
	player.rotation.y -= mouse_delta.x * sensitivity
	
	# Vertical rotation
	rotation.x -= mouse_delta.y * sensitivity
	rotation.x = clampf(rotation.x, -VERTICAL_LOOK_LIMIT, VERTICAL_LOOK_LIMIT)
