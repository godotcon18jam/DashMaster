extends Camera2D


onready var player = get_parent().get_node("player")


func _process(delta):
    # TODO: next thing is to add a count down before players starts
    
    # camera moves forward
    self.position.x += 10 * delta