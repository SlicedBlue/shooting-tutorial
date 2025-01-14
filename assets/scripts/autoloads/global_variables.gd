extends Node


var _camera_sensitivity: float = 0.0


func set_camera_sensitivity(sensitivity: float) -> void:
	_camera_sensitivity = sensitivity


func get_camera_sensitivity() -> float:
	return _camera_sensitivity
