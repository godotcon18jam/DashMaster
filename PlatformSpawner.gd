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
        platform.position.x = size.x + platform.texture.get_size().x
        platform.position.y = range(10, size.y)[randi()%range(10, size.y).size()]
        add_child(platform)
        get_node("Timer").start()

#    print(position.y)
#    position.y = range(100,601)[randi()%range(100,601).size()]
#    # Called every frame. Delta is time since last frame.
#    # Update game logic here.
#    pass
