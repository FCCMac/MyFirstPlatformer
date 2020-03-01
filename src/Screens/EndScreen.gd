extends Control

onready var sub: Label = $Sub


func _ready() -> void:
	sub.text = sub.text % [PlayerData.score, PlayerData.deaths]

