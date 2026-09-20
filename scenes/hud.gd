extends Control

@export var curr_hp: int = 0
@export var max_hp: int = 40

@onready var hp_bar = $PlayerPieces/Portrait/HPBar

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	hp_bar.max_value = max_hp
	hp_bar.value = curr_hp
