extends Node2D

var PlatformNode = preload("res://platform.tscn")

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
        var platform = PlatformNode.instance()
        var size = self.get_viewport().size
        print("size %s", size)
        platform.position.x = 137 + platform.texture.get_size().x
        platform.position.y = range(30, 80)[randi()%range(30, 80).size()]
        add_child(platform)
        get_node("Timer").start()