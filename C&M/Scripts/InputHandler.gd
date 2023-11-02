extends command

class_name inputHandler

var jump = JumpCommand.new()

func _ready():
	pass

func inputHandle(gameActor : actor):
	if Input.is_action_just_pressed("Jump"):
		jump.execute(gameActor)
	


