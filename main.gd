extends Node

var health = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label.text = str(health)
	$Label.modulate = Color.GREEN
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed('my_action'):
		health -= 20
		$Label.text = str(health)
