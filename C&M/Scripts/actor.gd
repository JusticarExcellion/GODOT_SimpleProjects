extends CharacterBody3D

class_name actor

var currntSpeed : float = 0.0
const JumpVelocity : float = 4.5


var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

func _ready():
	pass

func _process(delta):
	
	if not is_on_floor():
		velocity.y -= gravity * delta
	
	
	move_and_slide()


func jump():
	if is_on_floor():
		velocity.y = JumpVelocity
