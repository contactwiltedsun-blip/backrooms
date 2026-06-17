extends CanvasLayer

@onready var settings_panel = $SettingsPanel
@onready var volume_slider = $SettingsPanel/VBoxContainer/VolumeContainer/VolumeSlider
@onready var grain_slider = $SettingsPanel/VBoxContainer/GrainContainer/GrainSlider
@onready var vhs_effect = $VHSEffect

func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), false)

func _on_btn_jouer_pressed():
	get_tree().change_scene_to_file("res://scenes/main.tscn")

func _on_btn_parametres_pressed():
	settings_panel.visible = true

func _on_btn_quitter_pressed():
	get_tree().quit()

func _on_btn_back_pressed():
	settings_panel.visible = false

func _on_volume_changed(value: float):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), linear_to_db(value))

func _on_grain_changed(value: float):
	vhs_effect.material.set_shader_parameter("grain_amount", value)
