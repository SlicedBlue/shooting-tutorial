class_name SensitivitySlider
extends HSlider


func _ready() -> void:
	value_changed.connect(_update_sensitivity)


func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("increase_sensitivity"):
		value += step
	if Input.is_action_just_pressed("decrease_sensitivity"):
		value -= step


func _update_sensitivity(new_value: float) -> void:
	GlobalVariables.set_camera_sensitivity(new_value)
