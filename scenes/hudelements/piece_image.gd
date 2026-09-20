@tool
extends Control
@export var enabled: bool = true:
	get():
		return enabled
	set(value):
		if value == true:
			$TextureRect.modulate = Color8(255,255,255)
			$TextureRect2.modulate = Color8(255,255,255)
		else:
			$TextureRect.modulate = Color8(127,127,127)
			$TextureRect2.modulate = Color8(127,127,127)
		enabled = value

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
