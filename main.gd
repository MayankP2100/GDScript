extends Node

var health = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label.text = str(health)
	$Label.modulate = Color.GREEN
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed('my_action'):
		health -= 15

		if health < 0:
			health = 0

		if health > 70:
			$Label.modulate = Color.GREEN
		elif health <= 70 and health > 30:
			$Label.modulate = Color.YELLOW
		elif health <= 30 and health > 0:
			$Label.modulate = Color.RED
		elif health <= 0:
			$Label.modulate = Color.BLACK

		$Label.text = str(health)
