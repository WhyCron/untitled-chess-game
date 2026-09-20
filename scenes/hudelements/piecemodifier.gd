extends Control

# box width, BG colour, FG colour
const MODIFIERS: Array = [
	[50, Color8(127,127,127), Color8(222,222,222), "Basic"], #Basic
	[72, Color8(162,55,5), Color8(255,158,101), "Petrified"], #Petrified
]
@export_enum("Basic", "Petrified") var mod_type: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	custom_minimum_size = Vector2(MODIFIERS[mod_type][0],custom_minimum_size.y)
	$BG.color = MODIFIERS[mod_type][1]
	$Text.label_settings.font_color = MODIFIERS[mod_type][2]
	$Text.text = MODIFIERS[mod_type][3]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
