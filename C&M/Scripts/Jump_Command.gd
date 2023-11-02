extends command

class_name  JumpCommand

func _ready():
	pass

func execute(gameActor : actor):
	gameActor.jump()
