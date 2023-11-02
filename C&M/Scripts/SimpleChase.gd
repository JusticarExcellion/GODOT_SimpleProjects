extends actor

class_name SimpleChase

var speed : float = 7.0
@onready var navigation_agent_3d = $NavigationAgent3D
@onready var collision_shape_3d = $CollisionShape3D

var command_jump = JumpCommand.new()


func _ready():
	pass

func _process(delta):
	
	if navigation_agent_3d.distance_to_target() < 2:
		print("gotcha")
	
	var currentLocation = global_transform.origin
	var nextLocation = navigation_agent_3d.get_next_path_position()
	var newVelocity = (nextLocation - currentLocation).normalized()
	
	velocity = newVelocity
	
	
	move_and_slide()

func updateTargetLocation(targetLocation):
	navigation_agent_3d.set_target_position(targetLocation)
