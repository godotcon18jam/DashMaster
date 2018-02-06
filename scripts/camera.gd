extends Camera2D


onready var player = get_parent().get_node("player")


func _fixed_process(delta):
	self.position = player.position
