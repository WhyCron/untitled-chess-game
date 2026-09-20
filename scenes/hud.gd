extends Control

@export_category("HUD Control")
@export var curr_hp: int = 0
@export var max_hp: int = 40
@export var squad_size: int = 20 #TEMP
@export var max_squad_size: int = 32 #TEMP
@export var curr_squad_size: int = 3 #TEMP
@export var active_pieces: int = 11 #TEMP
# variables above marked temp are to be replaced later with
# the actual ways they are calculated :blep:
#
# I might create a singleton whose purpose is to manage all of the
# (tentatively named) chesslings and pass the required info
# back into here from there

@onready var hp_bar = $PlayerPieces/Portrait/HPBar
@onready var hp_label = $PlayerPieces/Portrait/HP

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	hp_bar.max_value = max_hp
	hp_bar.value = curr_hp
	hp_label.text = "[outline_size=4]%d/[font_size=13][color=aaaaaa]%d[/color][/font_size][/outline_size]" % [curr_hp, max_hp]
