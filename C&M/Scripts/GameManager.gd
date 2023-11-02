extends Node3D

@onready var player = $Player

func _ready():
	pass

func _physics_process(delta):
	get_tree().call_group("Enemy", "updateTargetLocation", player.global_transform.origin)
