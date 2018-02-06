extends Node2D

var goreNode = preload("res://platform.tscn")

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	if get_node("Timer").is_stopped():
		print(delta)
		var gore = goreNode.instance()
		gore.position.x = 1224
		gore.position.y = range(100,601)[randi()%range(100,601).size()]
		add_child(gore)
		get_node("Timer").start()

#	print(position.y)
#	position.y = range(100,601)[randi()%range(100,601).size()]
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
