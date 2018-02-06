extends Node2D

var PlatformNode = preload("res://platform.tscn")


func _process(delta):
    if get_node("Timer").is_stopped():
        var platform = PlatformNode.instance()
        
        platform.position.x = 137 + platform.get_node("sprite").texture.get_width()
        platform.position.y = range(30, 80)[randi()%range(30, 80).size()]
        add_child(platform)
        get_node("Timer").start()