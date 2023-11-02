extends UI_element


class_name  UI_Sprint_element

func _ready():
	pass


func update_elemeent(element : ProgressBar, updatedValue : float) -> void:
	element.value = updatedValue
	
