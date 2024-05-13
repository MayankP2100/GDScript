extends Node

var health = 100


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label.text = str(health)
	$Label.modulate = Color.GREEN


func _input(event: InputEvent) -> void:
	# Reduce health if Space is pressed.
	if event.is_action_pressed('my_action'):
		health -= 15

		# Stop health from going below 0.
		if health < 0:
			health = 0

		# Check health and modify color based on the value
		if health > 70:
			$Label.modulate = Color.GREEN
		elif health <= 70 and health > 30:
			$Label.modulate = Color.YELLOW
		elif health <= 30 and health > 0:
			$Label.modulate = Color.RED
		elif health <= 0:
			$Label.modulate = Color.BLACK

		# Update text label to show modified health.
		$Label.text = str(health) # Converting health to string for label.

		# Label does not take int as value.
		#$Label.text = health # This wont work

